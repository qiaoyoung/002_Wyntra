import 'package:flutter/material.dart';
import 'package:wyntra/constants/app_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageSettingsScreen extends StatefulWidget {
  const LanguageSettingsScreen({super.key});

  @override
  State<LanguageSettingsScreen> createState() => _LanguageSettingsScreenState();
}

class _LanguageSettingsScreenState extends State<LanguageSettingsScreen> {
  String _selectedLanguage = 'English';
  bool _isLoading = true;

  final List<Map<String, String>> _languages = [
    {'code': 'en', 'name': 'English', 'nativeName': 'English'},
    {'code': 'zh', 'name': 'Chinese', 'nativeName': '中文'},
    {'code': 'es', 'name': 'Spanish', 'nativeName': 'Español'},
    {'code': 'fr', 'name': 'French', 'nativeName': 'Français'},
    {'code': 'de', 'name': 'German', 'nativeName': 'Deutsch'},
    {'code': 'ja', 'name': 'Japanese', 'nativeName': '日本語'},
    {'code': 'ko', 'name': 'Korean', 'nativeName': '한국어'},
  ];

  @override
  void initState() {
    super.initState();
    _loadSelectedLanguage();
  }

  Future<void> _loadSelectedLanguage() async {
    setState(() => _isLoading = true);
    try {
      final prefs = await SharedPreferences.getInstance();
      final language = prefs.getString('selected_language') ?? 'English';
      setState(() {
        _selectedLanguage = language;
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
      debugPrint('Error loading language: $e');
    }
  }

  Future<void> _saveSelectedLanguage(String language) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('selected_language', language);
    } catch (e) {
      debugPrint('Error saving language: $e');
    }
  }

  void _showRestartDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Language Changed'),
        content: const Text(
          'The language has been changed. Please restart the app for the changes to take effect.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: _languages.length,
              itemBuilder: (context, index) {
                final language = _languages[index];
                final bool isSelected = language['name'] == _selectedLanguage;
                
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(
                      color: isSelected 
                          ? AppColors.primary
                          : Colors.grey.withOpacity(0.2),
                      width: isSelected ? 2 : 1,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      if (!isSelected) {
                        setState(() {
                          _selectedLanguage = language['name']!;
                        });
                        _saveSelectedLanguage(language['name']!);
                        _showRestartDialog();
                      }
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          // 语言名称
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  language['name']!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  language['nativeName']!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // 选中标记
                          if (isSelected)
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
} 