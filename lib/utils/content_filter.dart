import 'package:flutter/foundation.dart';

/// 内容过滤工具，用于审核用户输入内容，符合苹果应用商店关于用户生成内容的审核要求
class ContentFilter {
  // 敏感词库 - 在实际应用中，这应该从服务器加载或存储在加密的本地文件中
  // 这里只是提供一个简单的示例，仅包含英文敏感词
  static final List<String> _sensitiveWords = [
    // 色情相关
    'porn', 'sex', 'xxx', 'adult', 'nude', 'naked', 'sexy',
    // 赌博相关
    'gamble', 'casino', 'bet', 'lottery', 'poker', 'roulette',
    // 毒品相关
    'drug', 'cocaine', 'heroin', 'marijuana', 'weed', 'cannabis',
    // 暴力相关
    'violence', 'kill', 'murder', 'weapon', 'gun', 'shoot', 'death',
    // 辱骂相关
    'fuck', 'shit', 'asshole', 'bitch', 'bastard', 'damn',
    // 歧视相关
    'racist', 'discrimination', 'nazi', 'hate',
  ];

  // 检测字符串是否包含敏感词
  static bool containsSensitiveContent(String text) {
    if (text.isEmpty) return false;
    
    final normalizedText = text.toLowerCase();
    
    for (final word in _sensitiveWords) {
      // 使用正则表达式检查是否包含完整的单词（避免误判子字符串）
      final regex = RegExp('\\b${word.toLowerCase()}\\b', caseSensitive: false);
      if (regex.hasMatch(normalizedText)) {
        debugPrint('敏感内容检测: 发现敏感词 "$word"');
        return true;
      }
    }
    
    return false;
  }
  
  // 检测字符串并返回找到的敏感词
  static List<String> findSensitiveWords(String text) {
    if (text.isEmpty) return [];
    
    final normalizedText = text.toLowerCase();
    final foundWords = <String>[];
    
    for (final word in _sensitiveWords) {
      // 使用正则表达式检查是否包含完整的单词
      final regex = RegExp('\\b${word.toLowerCase()}\\b', caseSensitive: false);
      if (regex.hasMatch(normalizedText)) {
        foundWords.add(word);
      }
    }
    
    return foundWords;
  }
  
  // 将敏感词替换为星号
  static String maskSensitiveContent(String text) {
    if (text.isEmpty) return text;
    
    String result = text;
    
    for (final word in _sensitiveWords) {
      // 使用正则表达式进行不区分大小写的替换，并且只替换完整单词
      final regex = RegExp('\\b${word.toLowerCase()}\\b', caseSensitive: false);
      if (regex.hasMatch(result.toLowerCase())) {
        // 创建相同长度的星号字符串
        final replacement = '*' * word.length;
        result = result.replaceAll(regex, replacement);
      }
    }
    
    return result;
  }
} 