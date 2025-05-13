import 'dart:convert';
import 'package:flutter/services.dart';

class LikeService {
  static Map<String, int> _likeCounts = {};
  static List<String> _userLikedPosts = [];
  static bool _isInitialized = false;

  // 初始化服务，加载所有点赞数据
  static Future<void> initialize() async {
    if (_isInitialized) return;
    
    try {
      final String response = await rootBundle.loadString('assets/data/likes.json');
      final data = await json.decode(response);
      
      // 加载点赞数量
      final likesData = data['likes'] as Map<String, dynamic>;
      _likeCounts = Map.fromEntries(
        likesData.entries.map((e) => MapEntry(e.key, e.value as int))
      );
      
      // 加载用户已点赞的帖子
      final userLikes = data['userLikes']['current_user'] as List<dynamic>;
      _userLikedPosts = userLikes.map((e) => e as String).toList();
      
      _isInitialized = true;
    } catch (e) {
      print('Error loading likes data: $e');
      // 初始化默认值
      _likeCounts = {};
      _userLikedPosts = [];
      _isInitialized = true;
    }
  }

  // 获取指定帖子的点赞数
  static Future<int> getLikeCount(String postId) async {
    await initialize();
    return _likeCounts[postId] ?? 0;
  }

  // 检查用户是否已点赞某帖子
  static Future<bool> isPostLikedByUser(String postId) async {
    await initialize();
    return _userLikedPosts.contains(postId);
  }

  // 切换点赞状态
  static Future<bool> toggleLike(String postId) async {
    await initialize();
    
    final bool isCurrentlyLiked = _userLikedPosts.contains(postId);
    
    if (isCurrentlyLiked) {
      _userLikedPosts.remove(postId);
    } else {
      _userLikedPosts.add(postId);
    }
    
    // 注意：在实际应用中，这里应该向服务器发送请求更新点赞状态
    // 这里我们只在内存中更新状态
    
    return !isCurrentlyLiked; // 返回新的点赞状态
  }
} 