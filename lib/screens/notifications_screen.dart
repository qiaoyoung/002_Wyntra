import 'package:flutter/material.dart';
import 'package:wyntra/constants/app_colors.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Messages', 
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: AppColors.textPrimary),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(height: 1, indent: 70),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.grey.shade200,
              child: Icon(Icons.person, color: Colors.grey.shade400),
            ),
            title: Text(
              'User ${index + 1}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Message preview text...'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${index + 1}m ago',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                ),
                const SizedBox(height: 4),
                if (index % 3 == 0)
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primary,
                    ),
                    child: const Text('1', style: TextStyle(color: Colors.white, fontSize: 10)),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
} 