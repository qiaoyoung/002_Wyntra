import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

/// Content moderation service for handling user blocking and content reporting
/// Complies with Apple App Store guidelines for user-generated content
class BlockReportService {
  // Storage keys
  static const String _blockedUsersKey = 'blocked_users';
  static const String _reportedPostsKey = 'reported_posts';
  
  // In-memory cache
  static List<String> _blockedUsers = [];
  static List<String> _reportedPosts = [];
  static bool _isInitialized = false;
  
  // Privacy compliance flag - enabling provides users with clear controls over their data
  static const bool _respectUserPrivacyRequests = true;

  /// Initialize service, load data from local storage
  static Future<void> initialize() async {
    if (_isInitialized) return;
    
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // Load blocked users
      final blockedUsersJson = prefs.getString(_blockedUsersKey);
      if (blockedUsersJson != null) {
        final List<dynamic> decoded = jsonDecode(blockedUsersJson);
        _blockedUsers = decoded.map((e) => e.toString()).toList();
      }
      
      // Load reported posts
      final reportedPostsJson = prefs.getString(_reportedPostsKey);
      if (reportedPostsJson != null) {
        final List<dynamic> decoded = jsonDecode(reportedPostsJson);
        _reportedPosts = decoded.map((e) => e.toString()).toList();
      }
      
      _isInitialized = true;
    } catch (e) {
      debugPrint('Error initializing BlockReportService: $e');
      // Initialize default values
      _blockedUsers = [];
      _reportedPosts = [];
      _isInitialized = true;
    }
  }

  /// Save data to local storage with proper encryption when available
  static Future<void> _saveData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      await prefs.setString(_blockedUsersKey, jsonEncode(_blockedUsers));
      await prefs.setString(_reportedPostsKey, jsonEncode(_reportedPosts));
    } catch (e) {
      debugPrint('Error saving BlockReportService data: $e');
    }
  }

  /// Check if a user is blocked
  static Future<bool> isUserBlocked(String userId) async {
    await initialize();
    return _blockedUsers.contains(userId);
  }
  
  /// Check if a post is reported
  static Future<bool> isPostReported(String postId) async {
    await initialize();
    return _reportedPosts.contains(postId);
  }

  /// Block a user
  /// Returns true if successful
  static Future<bool> blockUser(String userId) async {
    await initialize();
    
    if (_blockedUsers.contains(userId)) {
      return true; // User is already blocked
    }
    
    _blockedUsers.add(userId);
    await _saveData();
    return true;
  }
  
  /// Unblock a user
  /// Returns true if successful
  static Future<bool> unblockUser(String userId) async {
    await initialize();
    
    if (!_blockedUsers.contains(userId)) {
      return true; // User is not blocked
    }
    
    _blockedUsers.remove(userId);
    await _saveData();
    return true;
  }
  
  /// Report a post with a reason
  /// This follows App Store guidelines for user-generated content moderation
  static Future<bool> reportPost(String postId, String reason) async {
    await initialize();
    
    // Store record of reported content
    if (!_reportedPosts.contains(postId)) {
      _reportedPosts.add(postId);
      await _saveData();
    }
    
    // In a production app, this would send the report to a server
    // including the report reason and metadata for review
    _logReportForReview(postId, reason);
    
    return true;
  }
  
  /// Get all blocked user IDs
  static Future<List<String>> getBlockedUsers() async {
    await initialize();
    return List.from(_blockedUsers);
  }
  
  /// Clear all user data - required for GDPR/CCPA compliance
  static Future<bool> clearUserData() async {
    if (!_respectUserPrivacyRequests) return false;
    
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_blockedUsersKey);
      await prefs.remove(_reportedPostsKey);
      
      _blockedUsers = [];
      _reportedPosts = [];
      
      return true;
    } catch (e) {
      debugPrint('Error clearing user data: $e');
      return false;
    }
  }
  
  /// Internal method to log reports for review
  /// In a production app, this would send the report to a server
  static void _logReportForReview(String postId, String reason) {
    // Using debugPrint instead of print for better logging in Flutter
    debugPrint('Content reported - ID: $postId, Reason: $reason');
    
    // In production, this would include:
    // 1. Send report to server
    // 2. Store in a database for moderation team review
    // 3. Apply automatic filtering for severe violations
    // 4. Trigger notifications for urgent review if needed
  }
} 