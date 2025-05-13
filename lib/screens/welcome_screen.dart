import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:wyntra/screens/main_tab_screen.dart';
import 'package:wyntra/constants/app_colors.dart';
import 'package:wyntra/screens/webview_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  bool _isAgreed = false;
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, 
      duration: const Duration(milliseconds: 1500),
    );
    
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.65, curve: Curves.easeOut),
      ),
    );
    
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.65, curve: Curves.easeOut),
      ),
    );
    
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _openTermsOfService() {
    // 苹果官方EULA链接
    const String url = 'https://www.apple.com/legal/internet-services/itunes/dev/stdeula/';
    
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const WebViewScreen(
          title: 'Apple standard EULA',
          url: url,
        ),
      ),
    );
  }

  void _enterApp() {
    if (_isAgreed) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MainTabScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please agree to the End User License Agreement')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF34AECA), // 主题色
              const Color(0xFF34AECA).withOpacity(0.7),
              const Color(0xFF4BD0A0).withOpacity(0.9), // 渐变色
            ],
          ),
        ),
        child: SafeArea(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Opacity(
                opacity: _opacityAnimation.value,
                child: Transform.scale(
                  scale: _scaleAnimation.value,
                  child: child,
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 2),
                // 应用图标
                Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: buildAppIcon(),
                  ),
                ),
                const SizedBox(height: 20),
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [Colors.white, Colors.white70],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(bounds);
                  },
                  child: const Text(
                    'Wyntra',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Photography Sharing Community',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    letterSpacing: 1.0,
                  ),
                ),
                const Spacer(flex: 2),
                // 按钮
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: ElevatedButton(
                    onPressed: _enterApp,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2C8DA6), // 深一点的主题色调
                      foregroundColor: Colors.white,
                      minimumSize: Size(size.width, 56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 5,
                      shadowColor: AppColors.primary.withOpacity(0.5),
                    ),
                    child: const Text(
                      'Enter APP',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                // 用户协议勾选
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(
                          value: _isAgreed,
                          onChanged: (value) {
                            setState(() {
                              _isAgreed = value ?? false;
                            });
                          },
                          activeColor: const Color(0xFF2C8DA6),
                          shape: const CircleBorder(),
                          side: const BorderSide(color: Colors.white70),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: 'I have read and agree to the ',
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                            ),
                            children: [
                              TextSpan(
                                text: 'Apple Standard EULA',
                                style: const TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = _openTermsOfService,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  Widget buildAppIcon() {
    // 使用图片资源替代自定义绘制的"W"字母图标
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Image.asset(
          'assets/images/icon.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
} 