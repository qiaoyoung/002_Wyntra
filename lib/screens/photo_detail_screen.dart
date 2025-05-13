import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wyntra/constants/app_colors.dart';
import 'package:wyntra/models/photo_post.dart';
import 'package:wyntra/services/photo_service.dart';
import 'package:wyntra/widgets/comment_list.dart';
import 'package:wyntra/widgets/report_dialog.dart';
import 'package:wyntra/services/block_report_service.dart';
import 'package:flutter/foundation.dart';

class PhotoDetailScreen extends StatefulWidget {
  final PhotoPost post;

  const PhotoDetailScreen({super.key, required this.post});

  @override
  State<PhotoDetailScreen> createState() => _PhotoDetailScreenState();
}

class _PhotoDetailScreenState extends State<PhotoDetailScreen> {
  late PhotoPost _post;
  bool _isLiking = false;
  bool _isBookmarking = false;
  bool _isBlocking = false;
  bool _isReporting = false;
  bool _wasBlocked = false; // 用于跟踪是否拉黑了用户

  // 相机型号列表
  final List<String> _cameraModels = [
    'Canon EOS R5',
    'Sony Alpha A7 IV',
    'Nikon Z9',
    'Fujifilm X-T5',
    'Leica Q3',
    'Panasonic Lumix S5 II',
    'Olympus OM-1',
    'Hasselblad X2D 100C',
  ];
  
  // 镜头列表
  final List<String> _lenses = [
    'RF 24-70mm f/2.8L IS USM',
    'FE 16-35mm f/2.8 GM',
    'Z 70-200mm f/2.8 VR S',
    'XF 56mm f/1.2 R WR',
    'Summilux 28mm f/1.7 ASPH',
    'S-X50mm f/1.8',
    'M.Zuiko 12-40mm f/2.8 PRO II',
    'XCD 90V f/2.5',
  ];
  
  // 光圈值
  final List<String> _fStops = ['f/1.4', 'f/1.8', 'f/2', 'f/2.8', 'f/4', 'f/5.6', 'f/8', 'f/11', 'f/16'];
  
  // 快门速度
  final List<String> _shutterSpeeds = ['1/30s', '1/60s', '1/125s', '1/250s', '1/500s', '1/1000s', '1/2000s', '1/4000s'];
  
  // ISO值
  final List<String> _isoValues = ['100', '200', '400', '800', '1600', '3200'];
  
  // 位置列表
  final List<String> _locations = [
    'San Francisco, CA',
    'New York City, NY',
    'Tokyo, Japan',
    'Paris, France',
    'London, UK',
    'Sydney, Australia',
    'Vancouver, Canada',
    'Cape Town, South Africa',
    'Barcelona, Spain',
    'Santorini, Greece',
  ];

  @override
  void initState() {
    super.initState();
    _post = widget.post;
    // 设置沉浸式状态栏
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  void dispose() {
    // 恢复原来的状态栏样式
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    super.dispose();
  }

  Future<void> _toggleLike() async {
    if (_isLiking) return;
    
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
      debugPrint('Error toggling like: $e');
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
        debugPrint('Error in PhotoDetailScreen when toggling bookmark: $e');
        // 直接更新UI状态，保持用户体验流畅
        newBookmarkState = !_post.isBookmarked;
      }
      
      setState(() {
        _post.isBookmarked = newBookmarkState;
        _isBookmarking = false;
      });
      
      // 显示提示
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
    } catch (e) {
      debugPrint('Unexpected error in bookmarking: $e');
      
      if (mounted) {
        setState(() {
          _isBookmarking = false;
        });
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
        
        // 标记已拉黑并返回上一页
        setState(() {
          _wasBlocked = true;
        });
        
        // 返回到上一页，带上拉黑状态
        Navigator.pop(context, {
          'photoId': _post.userId, 
          'isBookmarked': _post.isBookmarked,
          'wasBlocked': true
        });
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

  // 构建信息行
  Widget _buildInfoRow({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Row(
      children: [
        Icon(icon, size: 16, color: AppColors.primary),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: AppColors.textPrimary,
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }

  // 构建标签
  Widget _buildTag(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        '#$label',
        style: const TextStyle(
          color: AppColors.primary,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  // 构建统计项
  Widget _buildStatItem(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  // 生成随机日期
  String _getRandomDate() {
    final now = DateTime.now();
    final random = DateTime(
      now.year,
      now.month - _getRandomNumber(0, 3),
      now.day - _getRandomNumber(0, 28),
    );
    
    return '${_getMonthName(random.month)} ${random.day}, ${random.year}';
  }

  // 获取月份名称
  String _getMonthName(int month) {
    const months = [
      'January', 'February', 'March', 'April',
      'May', 'June', 'July', 'August',
      'September', 'October', 'November', 'December'
    ];
    return months[month - 1];
  }

  // 生成随机数字
  int _getRandomNumber(int min, int max) {
    return min + DateTime.now().microsecond % (max - min + 1);
  }

  // 生成随机小数
  double _getRandomDouble() {
    return DateTime.now().microsecond % 100 / 100;
  }

  // 显示全屏图片
  void _showFullScreenImage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog.fullscreen(
          backgroundColor: Colors.black,
          child: Stack(
            fit: StackFit.expand,
            children: [
              // 全屏图片，支持缩放和平移
              InteractiveViewer(
                panEnabled: true,
                minScale: 0.5,
                maxScale: 4,
                child: Center(
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Image.asset(
                      _post.photo,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              
              // 关闭按钮
              Positioned(
                top: 40,
                right: 20,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ),
              
              // 图片信息
              Positioned(
                bottom: 40,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    // 作者信息
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(_post.avatar),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _post.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // 根据用户ID获取相机信息
  String _getCameraModel() {
    // 使用用户ID的hashCode来选择相机型号，确保同一个用户总是得到相同的相机
    final index = _post.userId.hashCode.abs() % _cameraModels.length;
    return _cameraModels[index];
  }
  
  // 根据用户ID获取镜头信息
  String _getLensModel() {
    // 使用用户ID的hashCode加上一个偏移量来选择镜头，确保分布均匀
    final index = (_post.userId.hashCode.abs() + 3) % _lenses.length;
    return _lenses[index];
  }
  
  // 获取相机设置
  String _getCameraSettings() {
    // 使用用户ID的不同部分来选择不同的设置参数
    final fStopIndex = _post.userId.hashCode.abs() % _fStops.length;
    final shutterIndex = (_post.userId.hashCode.abs() + 5) % _shutterSpeeds.length;
    final isoIndex = (_post.userId.hashCode.abs() + 10) % _isoValues.length;
    
    return '${_fStops[fStopIndex]} • ${_shutterSpeeds[shutterIndex]} • ISO ${_isoValues[isoIndex]}';
  }
  
  // 获取拍摄位置
  String _getLocation() {
    final index = _post.userId.hashCode.abs() % _locations.length;
    return _locations[index];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // 返回时传递收藏状态和拉黑状态
        Navigator.pop(context, {
          'photoId': _post.userId, 
          'isBookmarked': _post.isBookmarked,
          'wasBlocked': _wasBlocked
        });
        return false; // 返回false，因为我们已经手动处理了返回
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black87),
              onPressed: () {
                // 返回时传递收藏状态和拉黑状态
                Navigator.pop(context, {
                  'photoId': _post.userId, 
                  'isBookmarked': _post.isBookmarked,
                  'wasBlocked': _wasBlocked
                });
              },
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(
                  _post.isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                  color: Colors.black87,
                ),
                onPressed: _isBookmarking ? null : _toggleBookmark,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.more_horiz, color: Colors.black87),
                onPressed: _showOptionsMenu,
              ),
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            // Photo hero section
            SliverToBoxAdapter(
              child: Hero(
                tag: 'photo_${_post.userId}',
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: double.infinity,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      // Photo
                      GestureDetector(
                        onTap: _showFullScreenImage,
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
                      // 渐变阴影
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.7),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // 点击提示
                      Positioned(
                        top: 16,
                        right: 16,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.zoom_in,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Tap to zoom',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            // User info and content
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, -5),
                    ),
                  ],
                ),
                margin: EdgeInsets.zero,
                transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // User info header
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 24, 16, 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(_post.avatar),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _post.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.camera_alt,
                                      size: 16,
                                      color: AppColors.primary,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      'Photographer',
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // Action buttons with animation
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: _isLiking ? null : _toggleLike,
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              decoration: BoxDecoration(
                                color: _post.isLiked ? Colors.red.withOpacity(0.1) : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    _post.isLiked ? Icons.favorite : Icons.favorite_border,
                                    color: _post.isLiked ? Colors.red : Colors.black87,
                                    size: 24,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    "${_post.isLiked ? _post.likeCount + 1 : _post.likeCount}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: _post.isLiked ? Colors.red : Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.chat_bubble_outline,
                                  color: Colors.black87,
                                  size: 22,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  "${_post.comments.length}",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // Photo description with card style
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                      padding: const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 标题栏
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.primary.withOpacity(0.05),
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(16),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary.withOpacity(0.1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.photo_camera,
                                    color: AppColors.primary,
                                    size: 18,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                const Text(
                                  'Photo Details',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // 照片描述
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 照片标题
                                Text(
                                  '${_post.name}\'s Masterpiece',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                
                                // 描述文本
                                Text(
                                  _post.photoDescription,
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                
                                // 拍摄信息
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade50,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.grey.shade200),
                                  ),
                                  child: Column(
                                    children: [
                                      // 相机信息
                                      _buildInfoRow(
                                        icon: Icons.camera_alt,
                                        title: 'Camera',
                                        value: _getCameraModel(),
                                      ),
                                      const Divider(height: 16),
                                      
                                      // 镜头信息
                                      _buildInfoRow(
                                        icon: Icons.lens,
                                        title: 'Lens',
                                        value: _getLensModel(),
                                      ),
                                      const Divider(height: 16),
                                      
                                      // 设置信息
                                      _buildInfoRow(
                                        icon: Icons.settings,
                                        title: 'Settings',
                                        value: _getCameraSettings(),
                                      ),
                                      const Divider(height: 16),
                                      
                                      // 位置信息
                                      _buildInfoRow(
                                        icon: Icons.location_on,
                                        title: 'Location',
                                        value: _getLocation(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // 时间戳
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                            child: Text(
                              'Posted on ${_getRandomDate()}',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          
                          // 标签
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                            child: Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: [
                                _buildTag('Photography'),
                                _buildTag('Nature'),
                                _buildTag('Landscape'),
                                _buildTag('${_post.name}'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // 关于摄影师部分
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      padding: const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 标题栏
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.primary.withOpacity(0.05),
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(16),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary.withOpacity(0.1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.person,
                                    color: AppColors.primary,
                                    size: 18,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                const Text(
                                  'About the Photographer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // 摄影师简介
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 更丰富的用户描述
                                Text(
                                  _post.userDescription,
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 14,
                                    height: 1.5,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                
                                // 摄影师统计数据
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    _buildStatItem('Photos', '${_getRandomNumber(50, 500)}'),
                                    _buildStatItem('Followers', '${_getRandomNumber(500, 10000)}'),
                                    _buildStatItem('Rating', '${(4 + (0.9 * _getRandomDouble())).toStringAsFixed(2)}'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // Comments section with card style
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          // 标题栏
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.primary.withOpacity(0.05),
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(16),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary.withOpacity(0.1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.chat_bubble_outline,
                                    color: AppColors.primary,
                                    size: 18,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                const Text(
                                  'Comments',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: AppColors.primary,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    '${_post.comments.length}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // 评论列表
                          CommentList(comments: _post.comments, postId: _post.userId),
                        ],
                      ),
                    ),
                    
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 