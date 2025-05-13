import 'package:flutter/material.dart';
import 'package:wyntra/constants/app_colors.dart';
import 'package:wyntra/models/photo_post.dart';
import 'package:wyntra/services/photo_service.dart';
import 'package:wyntra/utils/content_filter.dart';
import 'package:flutter/foundation.dart';

class AddCommentWidget extends StatefulWidget {
  final String postId;
  final Function(Comment) onCommentAdded;

  const AddCommentWidget({
    super.key,
    required this.postId,
    required this.onCommentAdded,
  });

  @override
  State<AddCommentWidget> createState() => _AddCommentWidgetState();
}

class _AddCommentWidgetState extends State<AddCommentWidget> {
  final TextEditingController _commentController = TextEditingController();
  bool _isSubmitting = false;
  bool _hasText = false;

  @override
  void initState() {
    super.initState();
    _commentController.addListener(_updateTextState);
  }

  void _updateTextState() {
    final hasText = _commentController.text.trim().isNotEmpty;
    if (hasText != _hasText) {
      setState(() {
        _hasText = hasText;
      });
    }
  }

  @override
  void dispose() {
    _commentController.removeListener(_updateTextState);
    _commentController.dispose();
    super.dispose();
  }

  // Show sensitive content warning
  void _showSensitiveContentWarning(List<String> sensitiveWords) {
    showDialog(
      context: context,
      barrierDismissible: false, // User must tap button to dismiss
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            const Icon(Icons.block, color: Colors.red),
            const SizedBox(width: 8),
            const Text('Content Blocked'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your comment contains the following prohibited words:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.red.shade200),
              ),
              child: Text(
                sensitiveWords.join(', '),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Please edit your comment and remove prohibited content before posting.',
              style: TextStyle(fontSize: 13),
            ),
            const SizedBox(height: 8),
            const Text(
              'Our community guidelines prohibit content related to pornography, violence, abuse, discrimination, or other harmful material.',
              style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Understood'),
          ),
        ],
      ),
    );
  }

  Future<void> _submitComment() async {
    final commentText = _commentController.text.trim();
    if (commentText.isEmpty) return;

    // Check for sensitive content on submission
    final sensitiveWords = ContentFilter.findSensitiveWords(commentText);
    if (sensitiveWords.isNotEmpty) {
      _showSensitiveContentWarning(sensitiveWords);
      return;
    }

    setState(() {
      _isSubmitting = true;
    });

    try {
      // Create new comment object
      final newComment = Comment(
        userId: 'current_user', // In a real app, this would be the current user's ID
        username: 'You', // In a real app, this would be the current user's username
        avatar: 'assets/images/userHeaders/user_1.png', // Replace with current user's avatar
        text: commentText,
        createdAt: DateTime.now(),
      );

      // Submit comment
      final success = await PhotoService.addComment(widget.postId, newComment);

      if (success) {
        // Clear input field
        _commentController.clear();
        
        // Notify parent component that comment was added
        widget.onCommentAdded(newComment);
      } else {
        // Server rejected comment (possibly due to sensitive content that client missed)
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Comment violates community guidelines and cannot be posted'),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 3),
            ),
          );
        }
      }
    } catch (e) {
      debugPrint('Error submitting comment: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to post comment. Please try again later.'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSubmitting = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(16),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // User avatar
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey.shade200,
                width: 1,
              ),
            ),
            child: const CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/images/userHeaders/user_1.png'),
            ),
          ),
          const SizedBox(width: 12),
          
          // Comment input field
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey.shade200,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _commentController,
                decoration: const InputDecoration(
                  hintText: 'Add a comment...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: AppColors.textHint),
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
                style: const TextStyle(fontSize: 14),
                textInputAction: TextInputAction.send,
                onSubmitted: (_) => _submitComment(),
                enabled: !_isSubmitting,
                maxLines: 1,
              ),
            ),
          ),
          
          // Send button
          const SizedBox(width: 8),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              color: _hasText ? AppColors.primary : Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: _hasText && !_isSubmitting ? _submitComment : null,
              icon: _isSubmitting
                  ? const SizedBox(
                      width: 14,
                      height: 14,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : Icon(
                      Icons.send,
                      size: 16,
                      color: _hasText ? Colors.white : Colors.grey.shade400,
                    ),
              padding: EdgeInsets.zero,
              splashRadius: 20,
            ),
          ),
        ],
      ),
    );
  }
} 