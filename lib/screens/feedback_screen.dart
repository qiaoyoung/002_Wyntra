import 'package:flutter/material.dart';
import 'package:wyntra/constants/app_colors.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final TextEditingController _feedbackController = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();
  File? _selectedImage;
  bool _isSending = false;
  int get _charCount => _feedbackController.text.length;
  final int _maxChars = 512;

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    try {
      final XFile? pickedFile = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1024,
        maxHeight: 1024,
        imageQuality: 85,
      );

      if (pickedFile != null) {
        setState(() {
          _selectedImage = File(pickedFile.path);
        });
      }
    } catch (e) {
      debugPrint('Error picking image: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to pick image. Please try again.')),
        );
      }
    }
  }

  void _removeImage() {
    setState(() {
      _selectedImage = null;
    });
  }

  Future<void> _submitFeedback() async {
    if (_feedbackController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your feedback')),
      );
      return;
    }

    setState(() {
      _isSending = true;
    });

    // 模拟网络请求
    await Future.delayed(const Duration(seconds: 1));

    // 模拟成功响应
    if (mounted) {
      setState(() {
        _isSending = false;
      });

      // 显示成功消息并返回
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Thank you for your feedback!'),
          backgroundColor: Colors.green,
        ),
      );

      // 短暂延迟后返回上一页
      Future.delayed(const Duration(milliseconds: 1500), () {
        if (mounted) {
          Navigator.pop(context);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6F4FA), // 浅蓝色背景，与设计图匹配
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Feedback',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          if (!_isSending)
            IconButton(
              icon: const Icon(
                Icons.check_circle,
                color: AppColors.primary,
                size: 28,
              ),
              onPressed: _submitFeedback,
            ),
          if (_isSending)
            Container(
              padding: const EdgeInsets.all(8),
              width: 48,
              height: 48,
              alignment: Alignment.center,
              child: const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                ),
              ),
            ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 反馈文本输入区
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextField(
                      controller: _feedbackController,
                      maxLines: 10,
                      maxLength: _maxChars,
                      decoration: const InputDecoration(
                        hintText: 'Please enter your report information',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        border: InputBorder.none,
                        counter: SizedBox.shrink(), // 隐藏内置计数器
                      ),
                      onChanged: (value) {
                        // 触发UI更新以显示字符计数
                        setState(() {});
                      },
                    ),
                  ),
                  
                  // 字符计数
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                      child: Text(
                        '$_charCount/$_maxChars',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // 图片选择区域
                  if (_selectedImage == null)
                    GestureDetector(
                      onTap: _pickImage,
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFF3BB9D9),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color(0xFF3BB9D9),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Color(0xFF3BB9D9),
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  
                  // 已选择的图片
                  if (_selectedImage != null)
                    Stack(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.file(
                            _selectedImage!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: GestureDetector(
                            onTap: _removeImage,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} 