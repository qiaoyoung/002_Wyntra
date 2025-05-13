import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:wyntra/models/photo_post.dart';
import 'package:wyntra/services/like_service.dart';
import 'package:wyntra/services/comment_service.dart';
import 'package:wyntra/services/block_report_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

class PhotoService {
  static Future<List<PhotoPost>> getPhotoPosts() async {
    try {
      // 从assets加载基础照片数据
      final String response = await rootBundle.loadString('assets/images/data.json');
      final data = await json.decode(response);
      
      // 获取被拉黑的用户列表
      final blockedUsers = await BlockReportService.getBlockedUsers();
      
      // 获取已收藏的照片列表
      final bookmarkedPosts = await getBookmarkedPosts();
      
      // 将JSON数据转换为PhotoPost对象列表
      final List<dynamic> postsJson = data['alldata'];
      List<PhotoPost> posts = postsJson
          .map((json) => PhotoPost.fromJson(json))
          .where((post) => !blockedUsers.contains(post.userId)) // 过滤掉被拉黑用户的帖子
          .toList();
      
      // 为每个帖子加载点赞和评论数据
      List<PhotoPost> enrichedPosts = [];
      
      for (var post in posts) {
        // 加载点赞数据
        final likeCount = await LikeService.getLikeCount(post.userId);
        final isLiked = await LikeService.isPostLikedByUser(post.userId);
        
        // 加载评论数据
        final comments = await CommentService.getCommentsForPost(post.userId);
        
        // 检查是否已收藏
        final isBookmarked = bookmarkedPosts.contains(post.userId);
        
        // 创建包含完整数据的新PhotoPost对象
        enrichedPosts.add(
          PhotoPost(
            userId: post.userId,
            name: post.name,
            avatar: post.avatar,
            userDescription: post.userDescription,
            photo: post.photo,
            photoDescription: post.photoDescription,
            likeCount: likeCount,
            comments: comments,
            isLiked: isLiked,
            isBookmarked: isBookmarked,
          )
        );
      }
      
      return enrichedPosts;
    } catch (e) {
      print('Error loading photo data: $e');
      return [];
    }
  }

  // 切换照片点赞状态
  static Future<bool> toggleLike(String postId) async {
    return await LikeService.toggleLike(postId);
  }

  // 添加评论
  static Future<bool> addComment(String postId, Comment comment) async {
    return await CommentService.addComment(postId, comment);
  }
  
  // 拉黑用户
  static Future<bool> blockUser(String userId) async {
    return await BlockReportService.blockUser(userId);
  }
  
  // 举报帖子
  static Future<bool> reportPost(String postId, String reason) async {
    return await BlockReportService.reportPost(postId, reason);
  }

  /// 切换收藏状态
  static Future<bool> toggleBookmark(String photoId) async {
    try {
      // 获取SharedPreferences实例
      SharedPreferences? prefs;
      try {
        prefs = await SharedPreferences.getInstance();
      } catch (e) {
        debugPrint('Error getting SharedPreferences instance: $e');
        // 如果无法获取SharedPreferences，使用内存中的备用存储
        return _toggleBookmarkInMemory(photoId);
      }
      
      // 获取已收藏的照片列表
      List<String> bookmarkedPosts;
      try {
        bookmarkedPosts = prefs.getStringList('bookmarked_posts') ?? [];
      } catch (e) {
        debugPrint('Error reading from SharedPreferences: $e');
        // 如果无法读取，使用内存中的备用存储
        return _toggleBookmarkInMemory(photoId);
      }
      
      final isCurrentlyBookmarked = bookmarkedPosts.contains(photoId);
      
      if (isCurrentlyBookmarked) {
        // 如果已收藏，则取消收藏
        bookmarkedPosts.remove(photoId);
      } else {
        // 如果未收藏，则添加收藏
        bookmarkedPosts.add(photoId);
      }
      
      // 保存更新后的收藏列表
      try {
        await prefs.setStringList('bookmarked_posts', bookmarkedPosts);
      } catch (e) {
        debugPrint('Error writing to SharedPreferences: $e');
        // 如果无法写入，使用内存中的备用存储
        return _toggleBookmarkInMemory(photoId);
      }
      
      // 返回新的收藏状态
      return !isCurrentlyBookmarked;
    } catch (e) {
      debugPrint('Error toggling bookmark: $e');
      // 出现任何其他错误，使用内存中的备用存储
      return _toggleBookmarkInMemory(photoId);
    }
  }
  
  // 内存中的备用收藏存储
  static final Set<String> _inMemoryBookmarks = {};
  
  // 在内存中切换收藏状态（当SharedPreferences不可用时的备用方案）
  static Future<bool> _toggleBookmarkInMemory(String photoId) async {
    final isCurrentlyBookmarked = _inMemoryBookmarks.contains(photoId);
    
    if (isCurrentlyBookmarked) {
      _inMemoryBookmarks.remove(photoId);
    } else {
      _inMemoryBookmarks.add(photoId);
    }
    
    return !isCurrentlyBookmarked;
  }
  
  /// 检查照片是否已收藏
  static Future<bool> isBookmarked(String photoId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final bookmarkedPosts = prefs.getStringList('bookmarked_posts') ?? [];
      return bookmarkedPosts.contains(photoId);
    } catch (e) {
      debugPrint('Error checking bookmark: $e');
      // 如果无法通过SharedPreferences检查，使用内存备用存储
      return _inMemoryBookmarks.contains(photoId);
    }
  }
  
  /// 获取所有已收藏的照片ID
  static Future<List<String>> getBookmarkedPosts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getStringList('bookmarked_posts') ?? [];
    } catch (e) {
      debugPrint('Error getting bookmarked posts: $e');
      // 如果无法通过SharedPreferences获取，使用内存备用存储
      return _inMemoryBookmarks.toList();
    }
  }
} 