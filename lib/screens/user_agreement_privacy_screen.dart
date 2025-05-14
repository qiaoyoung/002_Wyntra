import 'package:flutter/material.dart';
import 'package:wyntra/constants/app_colors.dart';

class UserAgreementPrivacyScreen extends StatelessWidget {
  const UserAgreementPrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Agreement & Privacy'),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            
            // 用户协议部分
            const Text(
              'User Agreement',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle('1. Acceptance of Terms'),
            _buildParagraph(
              'By accessing or using the Wyntra app, you agree to be bound by these Terms and Conditions and all applicable laws and regulations. If you do not agree with any of these terms, you are prohibited from using or accessing this app.'
            ),

            _buildSectionTitle('2. User Content'),
            _buildParagraph(
              'Users may upload photography and engage with other users\' content through comments, likes, and shares. You retain all rights to your content, but grant Wyntra a non-exclusive license to use, reproduce, and display such content within the app.'
            ),
            
            _buildSectionTitle('3. Community Guidelines'),
            _buildParagraph(
              'Users are expected to respect others and follow our community guidelines. Prohibited content includes but is not limited to: explicit content, hate speech, harassment, illegal activities, and copyright infringement. Violations may result in content removal or account suspension.'
            ),
            
            _buildSectionTitle('4. Account Responsibility'),
            _buildParagraph(
              'You are responsible for maintaining the confidentiality of your account information and for all activities under your account. You agree to notify us immediately of any unauthorized use of your account.'
            ),
            
            const SizedBox(height: 32),
            
            // 隐私政策部分
            const Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            
            _buildSectionTitle('1. Information We Collect'),
            _buildParagraph(
              'We collect information you provide when creating an account, including your name, email, and profile picture. We also collect usage data such as interactions with posts, preferences, and device information.'
            ),
            
            _buildSectionTitle('2. How We Use Your Information'),
            _buildParagraph(
              'We use your information to provide and improve our services, personalize your experience, communicate with you, and analyze usage patterns. Your information helps us develop new features and ensure platform security.'
            ),
            
            _buildSectionTitle('3. Information Sharing'),
            _buildParagraph(
              'We do not sell your personal information. We may share information with third-party service providers that help us operate our platform, but they are obligated to maintain confidentiality.'
            ),
            
            _buildSectionTitle('4. Data Security'),
            _buildParagraph(
              'We implement reasonable security measures to protect your information from unauthorized access, alteration, or disclosure. However, no internet transmission is completely secure.'
            ),
            
            _buildSectionTitle('5. Your Rights'),
            _buildParagraph(
              'You can access, update, or delete your account information at any time through the app settings. You may also request a copy of your data or opt out of certain data collection.'
            ),
            
            // 联系信息
            const SizedBox(height: 32),
            const Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            _buildParagraph(
              'If you have any questions about our User Agreement or Privacy Policy, please contact us at:'
            ),
            const SizedBox(height: 8),
            _buildContactInfo('Email', 'support@wyntrameg.com'),
            
            const SizedBox(height: 24),
            Center(
              child: Text(
                'Last Updated: ${DateTime.now().year}-${DateTime.now().month.toString().padLeft(2, '0')}-${DateTime.now().day.toString().padLeft(2, '0')}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black87,
          height: 1.5,
        ),
      ),
    );
  }

  Widget _buildContactInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
} 