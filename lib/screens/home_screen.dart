import 'package:flutter/material.dart';
import 'package:wyntra/constants/app_colors.dart';
import 'package:wyntra/models/photo_post.dart';
import 'package:wyntra/services/photo_service.dart';
import 'package:wyntra/widgets/photo_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<PhotoPost>> _photosFuture;
  List<PhotoPost>? _currentPosts;
  
  @override
  void initState() {
    super.initState();
    _loadPhotoPosts();
  }
  
  Future<void> _loadPhotoPosts() async {
    setState(() {
      _photosFuture = PhotoService.getPhotoPosts();
      _currentPosts = null;
    });
  }
  
  // 从列表中移除指定用户的所有帖子
  void _removeUserPosts(String userId) {
    if (_currentPosts == null) return;
    
    setState(() {
      _currentPosts!.removeWhere((post) => post.userId == userId);
    });
  }
  
  // 更新收藏状态
  void _updateBookmarkStatus(String photoId, bool isBookmarked) {
    if (_currentPosts == null) return;
    
    setState(() {
      for (var post in _currentPosts!) {
        if (post.userId == photoId) {
          post.isBookmarked = isBookmarked;
          break;
        }
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wyntra', 
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            fontSize: 24,
          )
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: AppColors.textPrimary),
            onPressed: _loadPhotoPosts,
          ),
        ],
      ),
      body: FutureBuilder<List<PhotoPost>>(
        future: _photosFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.primary,
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 60, color: AppColors.error),
                  const SizedBox(height: 16),
                  Text(
                    'Error loading data: ${snapshot.error}',
                    style: const TextStyle(color: AppColors.textSecondary),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _loadPhotoPosts,
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No photos found'),
            );
          }
          
          // 缓存当前帖子列表
          _currentPosts ??= snapshot.data;
          
          // 渲染照片列表
          return RefreshIndicator(
            onRefresh: _loadPhotoPosts,
            color: AppColors.primary,
            child: ListView.builder(
              itemCount: _currentPosts!.length,
              itemBuilder: (context, index) {
                final post = _currentPosts![index];
                return PhotoCard(
                  key: ValueKey('photo_${post.userId}'),
                  post: post,
                  onPostRemoved: () => _removeUserPosts(post.userId),
                  onBookmarkChanged: _updateBookmarkStatus,
                );
              },
            ),
          );
        },
      ),
    );
  }
} 