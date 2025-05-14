import 'package:flutter/material.dart';
import 'package:wyntra/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:wyntra/screens/blocked_users_screen.dart';
import 'package:wyntra/screens/user_agreement_privacy_screen.dart';
import 'package:wyntra/screens/language_settings_screen.dart';
import 'package:wyntra/screens/feedback_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool receiverModel = false;
  String username = 'Leila'; // 默认用户名为Leila
  String avatarPath = 'assets/images/userHeaders/user_1.png'; // 默认头像
  File? _selectedAvatar; // 存储用户选择的头像
  final TextEditingController _usernameController = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();
  bool _isReceiverModeChanging = false; // 添加状态变量，追踪接收者模式是否正在切换

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

  // 处理接收者模式切换
  Future<void> _handleReceiverModeChanged(bool value) async {
    if (_isReceiverModeChanging) return;

    setState(() {
      _isReceiverModeChanging = true;
    });

    // 模拟网络延迟
    await Future.delayed(const Duration(milliseconds: 800));

    // 随机模拟成功/失败结果 (这里设置为95%的成功率)
    final bool isSuccess = (DateTime.now().millisecondsSinceEpoch % 100) < 95;

    if (isSuccess) {
      setState(() {
        receiverModel = value;
        _isReceiverModeChanging = false;
      });

      // 保存接收者模式状态
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('receiver_mode', value);
      } catch (e) {
        debugPrint('Error saving receiver mode: $e');
      }

      // 显示成功提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Receiver Mode ${value ? 'enabled' : 'disabled'} successfully'),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } else {
      // 显示失败提示
      setState(() {
        _isReceiverModeChanging = false;
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to change Receiver Mode. Please try again.'),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }

  // 加载用户数据
  Future<void> _loadUserData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedUsername = prefs.getString('username');
      final savedAvatarPath = prefs.getString('avatarPath');
      final savedReceiverMode = prefs.getBool('receiver_mode');
      
      if (savedUsername != null && savedUsername.isNotEmpty) {
        setState(() {
          username = savedUsername;
        });
      }
      
      if (savedAvatarPath != null && savedAvatarPath.isNotEmpty) {
        setState(() {
          // 检查是否是应用内资源路径还是本地文件路径
          if (savedAvatarPath.startsWith('assets/')) {
            avatarPath = savedAvatarPath;
            _selectedAvatar = null;
          } else {
            _selectedAvatar = File(savedAvatarPath);
          }
        });
      }
      
      if (savedReceiverMode != null) {
        setState(() {
          receiverModel = savedReceiverMode;
        });
      }
    } catch (e) {
      debugPrint('Error loading user data: $e');
    }
  }

  // 保存用户数据
  Future<void> _saveUserData({String? newUsername, String? newAvatarPath}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      if (newUsername != null) {
        await prefs.setString('username', newUsername);
        debugPrint('用户名已保存: $newUsername');
      }
      
      if (newAvatarPath != null) {
        await prefs.setString('avatarPath', newAvatarPath);
        debugPrint('头像路径已保存: $newAvatarPath');
      }
    } catch (e) {
      debugPrint('Error saving user data: $e');
    }
  }

  // 打开昵称编辑对话框
  void _showEditUsernameDialog() {
    debugPrint('打开昵称编辑对话框');
    _usernameController.text = username;
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit Username'),
        content: TextField(
          controller: _usernameController,
          decoration: const InputDecoration(
            hintText: 'Enter new username',
            border: OutlineInputBorder(),
          ),
          autofocus: true,
          maxLength: 20,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              final newUsername = _usernameController.text.trim();
              if (newUsername.isNotEmpty) {
                setState(() {
                  username = newUsername;
                });
                _saveUserData(newUsername: newUsername);
                Navigator.pop(context);
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  // 从相册选择图片
  Future<void> _pickImage() async {
    debugPrint('打开相册选择头像');
    try {
      final XFile? pickedFile = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 800,
        maxHeight: 800,
        imageQuality: 85,
      );

      if (pickedFile != null) {
        setState(() {
          _selectedAvatar = File(pickedFile.path);
        });
        // 保存头像路径
        _saveUserData(newAvatarPath: pickedFile.path);
        debugPrint('新头像已选择: ${pickedFile.path}');
      }
    } catch (e) {
      debugPrint('选择头像时出错: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to pick image. Please try again.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.primary, // 主题色 100%
              AppColors.primary.withOpacity(0), // 主题色 0%
            ],
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              const SizedBox(height: 20),
              // 用户信息区域 - 头像和用户名
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // 用户昵称和编辑按钮
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            username,
                            style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 8),
                          // 编辑按钮
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                debugPrint('点击了编辑按钮');
                                _showEditUsernameDialog();
                              },
                              borderRadius: BorderRadius.circular(20),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                  size: 22,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 用户头像 - 可点击更换
                    GestureDetector(
                      onTap: _pickImage,
                      child: Stack(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 15,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(45),
                              child: _selectedAvatar != null
                                  ? Image.file(
                                      _selectedAvatar!,
                                      fit: BoxFit.cover,
                                    )
                                  : Image.asset(
                                      avatarPath,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                          // 添加编辑图标提示
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 2),
                              ),
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 40),
              // 设置标题
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              
              // 设置项列表 - 使用分组的方式，打乱原有顺序
              // 安全设置
              _buildSettingItem(
                icon: Icons.security,
                iconColor: Colors.green,
                iconBackgroundColor: Colors.green.withOpacity(0.1),
                title: 'Security Settings',
                onTap: () {
                  // 导航到黑名单页面
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BlockedUsersScreen(),
                    ),
                  );
                },
              ),
              
              // 用户协议和隐私政策
              _buildSettingItem(
                icon: Icons.description_outlined,
                iconColor: Colors.teal,
                iconBackgroundColor: Colors.teal.withOpacity(0.1),
                title: 'User Agreement & Privacy',
                onTap: () {
                  // 导航到用户协议和隐私政策页面
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserAgreementPrivacyScreen(),
                    ),
                  );
                },
              ),
              
              // 切换语言
              _buildSettingItem(
                icon: Icons.language,
                iconColor: Colors.orange,
                iconBackgroundColor: Colors.orange.withOpacity(0.1),
                title: 'Language',
                onTap: () {
                  // 导航到语言设置页面
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LanguageSettingsScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Account',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              
              // 接收者模式
              _buildSettingItem(
                icon: Icons.hearing_outlined,
                iconColor: Colors.blue,
                iconBackgroundColor: Colors.blue.withOpacity(0.1),
                title: 'Receiver Mode',
                trailing: _isReceiverModeChanging
                    ? const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                        ),
                      )
                    : CupertinoSwitch(
                        value: receiverModel,
                        activeColor: AppColors.primary,
                        onChanged: _handleReceiverModeChanged,
                      ),
              ),
              
              // 反馈
              _buildSettingItem(
                icon: Icons.feedback_outlined,
                iconColor: Colors.redAccent,
                iconBackgroundColor: Colors.redAccent.withOpacity(0.1),
                title: 'Send Feedback',
                onTap: () {
                  // 导航到反馈页面
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FeedbackScreen(),
                    ),
                  );
                },
              ),
              
              // 版本信息
              _buildSettingItem(
                icon: Icons.info_outline,
                iconColor: Colors.purple,
                iconBackgroundColor: Colors.purple.withOpacity(0.1),
                title: 'About Wyntra',
                trailing: const Text(
                  'v1.0.0',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                onTap: null, // 移除点击事件
              ),
              
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingItem({
    required IconData icon,
    required Color iconColor,
    required Color iconBackgroundColor,
    required String title,
    String? subtitle,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: iconBackgroundColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icon,
                    color: iconColor,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                trailing ?? const Icon(Icons.chevron_right, color: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _openUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await url_launcher.canLaunchUrl(uri)) {
      await url_launcher.launchUrl(
        uri, 
        mode: url_launcher.LaunchMode.inAppWebView,
      );
    }
  }
} 