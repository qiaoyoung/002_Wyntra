import 'package:flutter/material.dart';
import 'package:wyntra/constants/app_colors.dart';
import 'package:wyntra/services/block_report_service.dart';
import 'dart:io';

class BlockedUsersScreen extends StatefulWidget {
  const BlockedUsersScreen({super.key});

  @override
  State<BlockedUsersScreen> createState() => _BlockedUsersScreenState();
}

class _BlockedUsersScreenState extends State<BlockedUsersScreen> {
  List<Map<String, String>> _blockedUsers = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadBlockedUsers();
  }

  // 加载拉黑用户列表
  Future<void> _loadBlockedUsers() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final blockedUserDetails = await BlockReportService.getBlockedUserDetails();
      if (mounted) {
        setState(() {
          _blockedUsers = blockedUserDetails;
          _isLoading = false;
        });
      }
    } catch (e) {
      debugPrint('Error loading blocked users: $e');
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  // 解除拉黑用户
  Future<void> _unblockUser(String userId) async {
    try {
      final success = await BlockReportService.unblockUser(userId);
      if (success && mounted) {
        setState(() {
          _blockedUsers.removeWhere((user) => user['userId'] == userId);
        });
        
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('User has been removed from blocklist'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      debugPrint('Error unblocking user: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blocked Users'),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _blockedUsers.isEmpty
              ? _buildEmptyState()
              : _buildBlockedUsersList(),
    );
  }

  // 构建空状态视图
  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.block_outlined,
            size: 80,
            color: Colors.grey.withOpacity(0.5),
          ),
          const SizedBox(height: 16),
          const Text(
            'No Blocked Users',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'You haven\'t blocked any users yet',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  // 构建拉黑用户列表
  Widget _buildBlockedUsersList() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: _blockedUsers.length,
      itemBuilder: (context, index) {
        final user = _blockedUsers[index];
        return _buildBlockedUserItem(user);
      },
    );
  }

  // 构建单个拉黑用户项
  Widget _buildBlockedUserItem(Map<String, String> user) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.withOpacity(0.2)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // 用户头像
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: SizedBox(
                width: 50,
                height: 50,
                child: user['avatar']!.startsWith('assets/')
                    ? Image.asset(
                        user['avatar']!,
                        fit: BoxFit.cover,
                      )
                    : Image.file(
                        File(user['avatar']!),
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey.withOpacity(0.2),
                            child: const Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                          );
                        },
                      ),
              ),
            ),
            const SizedBox(width: 16),
            // 用户昵称信息
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user['name'] ?? 'Unknown User',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Blocked',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            // 解除拉黑按钮
            ElevatedButton(
              onPressed: () => _unblockUser(user['userId']!),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('Unblock'),
            ),
          ],
        ),
      ),
    );
  }
} 