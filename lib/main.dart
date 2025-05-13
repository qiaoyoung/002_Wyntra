import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:wyntra/screens/welcome_screen.dart';
import 'package:wyntra/constants/app_colors.dart';
import 'package:wyntra/screens/main_tab_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  // 确保Flutter引擎初始化
  WidgetsFlutterBinding.ensureInitialized();
  
  // 设置首选方向为竖屏
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  
  // 设置状态栏样式
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));
  
  // 预初始化SharedPreferences
  try {
    await SharedPreferences.getInstance();
    debugPrint('SharedPreferences initialized successfully');
  } catch (e) {
    debugPrint('Failed to initialize SharedPreferences: $e');
    // 继续运行应用，我们有备用的内存存储
  }
  
  // 初始化WebView平台
  if (WebViewPlatform.instance == null) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      WebViewPlatform.instance = WebKitWebViewPlatform();
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      WebViewPlatform.instance = AndroidWebViewPlatform();
    }
  }
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wyntra',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
        ),
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: AppColors.textPrimary,
          elevation: 0,
        ),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
