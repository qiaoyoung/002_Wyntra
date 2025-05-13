import 'package:flutter/material.dart';
import 'package:wyntra/constants/app_colors.dart';
import 'package:wyntra/models/photo_post.dart';
import 'package:wyntra/widgets/add_comment_widget.dart';
import 'package:wyntra/services/photo_service.dart';
import 'package:wyntra/widgets/report_dialog.dart';
import 'package:wyntra/services/block_report_service.dart';
import 'package:flutter/foundation.dart';

class CommentList extends StatefulWidget {
  final List<Comment> comments;
  final String postId;

  const CommentList({
    super.key, 
    required this.comments,
    required this.postId,
  });

  @override
  State<CommentList> createState() => _CommentListState();
}

class _CommentListState extends State<CommentList> {
  late List<Comment> _comments;
  Set<String> _blockedUserIds = {}; // 记录被拉黑的用户ID

  @override
  void initState() {
    super.initState();
    _comments = List.from(widget.comments);
    _loadBlockedUsers();
  }
  
  // 加载已拉黑的用户
  Future<void> _loadBlockedUsers() async {
    try {
      final blockedUsers = await BlockReportService.getBlockedUsers();
      if (mounted) {
        setState(() {
          _blockedUserIds = Set.from(blockedUsers);
        });
      }
    } catch (e) {
      debugPrint('Error loading blocked users: $e');
    }
  }

  void _handleCommentAdded(Comment newComment) {
    setState(() {
      _comments.add(newComment);
    });
  }
  
  // 拉黑评论用户
  void _blockCommentUser(Comment comment) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Block User'),
        content: Text('Are you sure you want to block ${comment.username}? You won\'t see their comments anymore.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              // 调用拉黑API
              final success = await BlockReportService.blockUser(comment.userId);
              if (success && mounted) {
                // 更新本地拉黑用户列表
                setState(() {
                  _blockedUserIds.add(comment.userId);
                });
                
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${comment.username} has been blocked'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              }
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Block'),
          ),
        ],
      ),
    );
  }
  
  // 举报评论
  void _reportComment(Comment comment) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext dialogContext) {
        return ReportDialog(
          onReport: (String reason) async {
            // 关闭对话框
            Navigator.of(dialogContext).pop();
            
            // 提交举报
            if (reason.isNotEmpty) {
              final success = await BlockReportService.reportPost(comment.userId, reason);
              
              if (success && mounted) {
                // 显示举报成功提示，但不隐藏评论
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Report submitted. Thank you for helping keep our community safe.'),
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            }
          },
        );
      },
    );
  }
  
  // 显示社区指南对话框
  void _showCommunityGuidelines() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            const Icon(Icons.info_outline, color: AppColors.primary),
            const SizedBox(width: 8),
            const Text('Community Guidelines'),
          ],
        ),
        content: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Our Community Values',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'At Wyntra, we believe in creating a respectful and positive environment for all users to share their passion for photography.',
              ),
              SizedBox(height: 16),
              Text(
                'Guidelines for Comments:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 8),
              Text('• Be respectful and considerate to others'),
              Text('• Do not post offensive, harmful, or illegal content'),
              Text('• No harassment, hate speech, or discrimination'),
              Text('• Do not share personal information'),
              Text('• No spam or irrelevant content'),
              SizedBox(height: 16),
              Text(
                'All content is monitored and violations may result in content removal or account suspension.',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('I Understand'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 过滤掉被拉黑用户的评论
    final visibleComments = _comments.where(
      (comment) => !_blockedUserIds.contains(comment.userId)
    ).toList();
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 评论列表标题，带社区指南按钮
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.info_outline,
                  color: AppColors.primary,
                  size: 20,
                ),
                tooltip: 'Community Guidelines',
                onPressed: _showCommunityGuidelines,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
        ),
        
        // 评论列表
        if (visibleComments.isNotEmpty)
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: visibleComments.length,
            separatorBuilder: (context, index) => const Divider(height: 1, indent: 56),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            itemBuilder: (context, index) {
              final comment = visibleComments[index];
              return CommentItem(
                comment: comment,
                onBlock: () => _blockCommentUser(comment),
                onReport: () => _reportComment(comment),
              );
            },
          ),
          
        // 如果没有评论，显示提示
        if (visibleComments.isEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Center(
              child: Column(
                children: [
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.grey,
                    size: 40,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'No comments yet',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Be the first to share your thoughts',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          
        // 添加分隔线
        const Divider(height: 1),
          
        // 添加评论的输入框
        AddCommentWidget(
          postId: widget.postId,
          onCommentAdded: _handleCommentAdded,
        ),
      ],
    );
  }
}

class CommentItem extends StatelessWidget {
  final Comment comment;
  final VoidCallback onBlock;
  final VoidCallback onReport;

  const CommentItem({
    super.key, 
    required this.comment,
    required this.onBlock,
    required this.onReport,
  });

  void _showOptions(BuildContext context) {
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
                onBlock();
              },
            ),
            ListTile(
              leading: const Icon(Icons.flag_outlined),
              title: const Text('Report Comment'),
              onTap: () {
                Navigator.pop(context);
                onReport();
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 用户头像
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey.shade200,
                width: 1,
              ),
            ),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey.shade200,
              backgroundImage: AssetImage(comment.avatar),
            ),
          ),
          const SizedBox(width: 12),
          
          // 评论内容
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 用户名和评论文本
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 用户名
                      Text(
                        comment.username,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 4),
                      
                      // 评论文本
                      Text(
                        comment.text,
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                
                // 只显示时间，移除点赞和回复按钮
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 4),
                  child: Text(
                    _getTimeAgo(comment.createdAt),
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // 更多选项按钮
          IconButton(
            icon: Icon(Icons.more_vert, size: 16, color: Colors.grey.shade400),
            onPressed: () => _showOptions(context),
            padding: const EdgeInsets.all(4),
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }

  String _getTimeAgo(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 365) {
      return '${(difference.inDays / 365).floor()}y ago';
    } else if (difference.inDays > 30) {
      return '${(difference.inDays / 30).floor()}m ago';
    } else if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'just now';
    }
  }
} 