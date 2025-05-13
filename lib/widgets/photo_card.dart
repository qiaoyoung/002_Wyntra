import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wyntra/constants/app_colors.dart';
import 'package:wyntra/models/photo_post.dart';
import 'package:wyntra/widgets/comment_list.dart';
import 'package:wyntra/services/photo_service.dart';
import 'package:wyntra/widgets/report_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:wyntra/screens/photo_detail_screen.dart';
import 'package:wyntra/services/block_report_service.dart';

class PhotoCard extends StatefulWidget {
  final PhotoPost post;
  final VoidCallback? onPostRemoved;
  final Function(String, bool)? onBookmarkChanged;

  const PhotoCard({
    super.key, 
    required this.post,
    this.onPostRemoved,
    this.onBookmarkChanged,
  });

  @override
  State<PhotoCard> createState() => _PhotoCardState();
}

class _PhotoCardState extends State<PhotoCard> {
  late PhotoPost _post;
  bool _isLiking = false;
  bool _isBlocking = false;
  bool _isReporting = false;
  bool _isBookmarking = false;

  @override
  void initState() {
    super.initState();
    _post = widget.post;
  }

  Future<void> _toggleLike() async {
    if (_isLiking) return; // 防止重复点击
    
    setState(() {
      _isLiking = true;
    });
    
    try {
      final newLikeState = await PhotoService.toggleLike(_post.userId);
      
      setState(() {
        _post.isLiked = newLikeState;
        _isLiking = false;
      });
    } catch (e) {
      print('Error toggling like: $e');
      setState(() {
        _isLiking = false;
      });
    }
  }

  Future<void> _toggleBookmark() async {
    if (_isBookmarking) return;
    
    setState(() {
      _isBookmarking = true;
    });
    
    try {
      bool newBookmarkState;
      
      try {
        newBookmarkState = await PhotoService.toggleBookmark(_post.userId);
      } catch (e) {
        debugPrint('Error in PhotoCard when toggling bookmark: $e');
        // 直接更新UI状态，保持用户体验流畅
        newBookmarkState = !_post.isBookmarked;
      }
      
      setState(() {
        _post.isBookmarked = newBookmarkState;
        _isBookmarking = false;
      });
      
      // 通知父组件收藏状态已改变
      if (widget.onBookmarkChanged != null) {
        widget.onBookmarkChanged!(_post.userId, newBookmarkState);
      }
      
      // 显示提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              _post.isBookmarked ? 'Added to bookmarks' : 'Removed from bookmarks',
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: AppColors.primary,
            duration: const Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(16),
          ),
        );
      }
    } catch (e) {
      debugPrint('Unexpected error in bookmarking: $e');
      
      if (mounted) {
        setState(() {
          _isBookmarking = false;
        });
      }
    }
  }

  Future<void> _navigateToDetail() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PhotoDetailScreen(post: _post),
      ),
    );
    
    // 处理返回结果，更新收藏状态
    if (result != null && result is Map<String, dynamic>) {
      final String photoId = result['photoId'] as String;
      final bool isBookmarked = result['isBookmarked'] as bool;
      final bool wasBlocked = result['wasBlocked'] as bool? ?? false;
      
      if (wasBlocked) {
        // 如果用户在详情页被拉黑，通知父组件移除此帖子
        if (widget.onPostRemoved != null) {
          widget.onPostRemoved!();
        }
        return; // 不需要继续处理收藏状态
      }
      
      if (_post.userId == photoId && _post.isBookmarked != isBookmarked) {
        setState(() {
          _post.isBookmarked = isBookmarked;
        });
        
        // 通知父组件收藏状态已改变
        if (widget.onBookmarkChanged != null) {
          widget.onBookmarkChanged!(photoId, isBookmarked);
        }
      }
    }
  }
  
  // 显示更多选项菜单
  void _showOptionsMenu() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.block, color: Colors.red),
              title: const Text('Block User'),
              onTap: () {
                Navigator.pop(context);
                _blockUser();
              },
            ),
            ListTile(
              leading: const Icon(Icons.flag_outlined),
              title: const Text('Report Content'),
              onTap: () {
                Navigator.pop(context);
                _reportPost();
              },
            ),
            ListTile(
              leading: const Icon(Icons.cancel_outlined),
              title: const Text('Cancel'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
  
  // 拉黑用户
  Future<void> _blockUser() async {
    if (_isBlocking) return;
    
    // 确认对话框
    final shouldBlock = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Block User'),
        content: Text('Are you sure you want to block ${_post.name}?\nYou won\'t see content from this user anymore.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Block User'),
          ),
        ],
      ),
    ) ?? false;
    
    if (!shouldBlock) return;
    
    setState(() {
      _isBlocking = true;
    });
    
    try {
      final success = await BlockReportService.blockUser(_post.userId);
      
      if (success && mounted) {
        // 显示屏蔽成功提示
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${_post.name} has been blocked'),
            duration: const Duration(seconds: 2),
          ),
        );
        
        // 通知父组件移除此帖子
        if (widget.onPostRemoved != null) {
          widget.onPostRemoved!();
        }
      }
    } finally {
      if (mounted) {
        setState(() {
          _isBlocking = false;
        });
      }
    }
  }
  
  // 举报帖子
  Future<void> _reportPost() async {
    if (_isReporting) return;
    
    setState(() {
      _isReporting = true;
    });
    
    try {
      // 使用Builder创建新的上下文，避免黑屏问题
      await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext dialogContext) {
          return ReportDialog(
            onReport: (String reason) {
              // 关闭对话框
              Navigator.of(dialogContext).pop();
              
              // 提交举报
              if (reason.isNotEmpty) {
                _submitReport(reason);
              }
            },
          );
        },
      );
    } catch (e) {
      debugPrint('Error showing report dialog: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isReporting = false;
        });
      }
    }
  }
  
  // 提交举报信息
  Future<void> _submitReport(String reason) async {
    try {
      final success = await BlockReportService.reportPost(_post.userId, reason);
      
      if (success && mounted) {
        // 显示举报成功提示
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Report submitted. Thank you for your feedback.'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      debugPrint('Error submitting report: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 用户信息
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade200,
                  backgroundImage: AssetImage(_post.avatar),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _post.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.more_horiz, color: AppColors.textHint),
                  onPressed: _showOptionsMenu,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
          ),
          
          // 照片 - 添加点击事件导航到详情页和Hero动画
          GestureDetector(
            onTap: _navigateToDetail,
            child: Hero(
              tag: 'photo_${_post.userId}',
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  _post.photo,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey.shade200,
                      child: Center(
                        child: Icon(
                          Icons.image_not_supported_outlined,
                          color: Colors.grey.shade400,
                          size: 40,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          
          // 照片操作按钮
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    _post.isLiked ? Icons.favorite : Icons.favorite_border,
                    color: _post.isLiked ? Colors.red : null,
                  ),
                  onPressed: _isLiking ? null : _toggleLike,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: const Icon(Icons.chat_bubble_outline),
                  onPressed: _navigateToDetail, // 导航到详情页
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(
                    _post.isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                    color: _post.isBookmarked ? AppColors.primary : null,
                  ),
                  onPressed: _isBookmarking ? null : _toggleBookmark,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
          ),
          
          // 点赞数量
          if (_post.likeCount > 0 || _post.isLiked)
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 4),
              child: Text(
                "${_post.isLiked ? _post.likeCount + 1 : _post.likeCount} likes",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          
          // 照片描述 - 添加点击事件导航到详情页
          GestureDetector(
            onTap: _navigateToDetail,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: _post.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: ' ${_post.photoDescription}',
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // 评论数量文本 - 添加点击事件导航到详情页
          if (_post.comments.isNotEmpty)
            InkWell(
              onTap: _navigateToDetail,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 4, bottom: 8),
                child: Text(
                  "View all ${_post.comments.length} comments",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          
          const SizedBox(height: 8),
        ],
      ),
    );
  }
} 