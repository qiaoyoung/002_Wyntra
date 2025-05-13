import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:wyntra/models/photo_post.dart';
import 'package:wyntra/utils/content_filter.dart';
import 'package:flutter/foundation.dart';

class CommentService {
  static Map<String, List<Comment>> _commentsCache = {};
  static bool _isInitialized = false;

  // 初始化服务，加载所有评论数据
  static Future<void> initialize() async {
    if (_isInitialized) return;
    
    try {
      final String response = await rootBundle.loadString('assets/data/comments.json');
      final data = await json.decode(response);
      
      final commentsData = data['comments'] as Map<String, dynamic>;
      
      // 将每个帖子的评论加入缓存
      commentsData.forEach((postId, commentsList) {
        final List<dynamic> comments = commentsList as List<dynamic>;
        _commentsCache[postId] = comments
            .map((comment) => Comment.fromJson(comment as Map<String, dynamic>))
            .toList();
      });
      
      _isInitialized = true;
    } catch (e) {
      debugPrint('Error loading comments data: $e');
      _commentsCache = {};
      _isInitialized = true;
    }
  }

  // 获取指定帖子的所有评论
  static Future<List<Comment>> getCommentsForPost(String postId) async {
    await initialize();
    return _commentsCache[postId] ?? [];
  }

  // 为帖子添加新评论
  static Future<bool> addComment(String postId, Comment comment) async {
    await initialize();
    
    // Check comment for sensitive content - server-side validation
    final sensitiveWords = ContentFilter.findSensitiveWords(comment.text);
    if (sensitiveWords.isNotEmpty) {
      // Log the violation for auditing and improving the filtering system
      debugPrint('Content blocked: Comment "${comment.text}" contains prohibited words: ${sensitiveWords.join(', ')}');
      
      // In a real app, this would be logged to server logs or monitoring system
      // Severe violations might trigger measures against the user
      
      return false;
    }
    
    if (!_commentsCache.containsKey(postId)) {
      _commentsCache[postId] = [];
    }
    
    _commentsCache[postId]!.add(comment);
    
    // Note: In a real app, this would send a request to the server to add the comment
    // Here we're just updating the state in memory
    
    debugPrint('Comment successfully added: "${comment.text}"');
    return true;
  }
} 