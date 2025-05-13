import 'package:flutter/material.dart';
import 'package:wyntra/constants/app_colors.dart';

/// Report dialog that follows iOS design guidelines
class ReportDialog extends StatefulWidget {
  final Function(String reason) onReport;

  const ReportDialog({super.key, required this.onReport});

  @override
  State<ReportDialog> createState() => _ReportDialogState();
}

class _ReportDialogState extends State<ReportDialog> {
  String? _selectedReason;
  final TextEditingController _otherReasonController = TextEditingController();
  bool _isOtherSelected = false;

  // Report reason options
  final List<String> _reportReasons = [
    'Inappropriate Content',
    'Privacy Violation',
    'Violence or Dangerous Content',
    'Intellectual Property Violation',
    'Spam or Fraud',
    'Hate Speech or Symbols',
    'Other Reason'
  ];

  @override
  void dispose() {
    _otherReasonController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    if (_selectedReason == null) return;
    
    String finalReason = _selectedReason!;
    if (_isOtherSelected && _otherReasonController.text.isNotEmpty) {
      finalReason = 'Other Reason: ${_otherReasonController.text.trim()}';
    }
    
    widget.onReport(finalReason);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Report Content',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Please select a reason to help us understand the issue',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const SizedBox(height: 15),
              // Report reason list
              Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.4,
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: _reportReasons.map((reason) {
                    final isOther = reason == 'Other Reason';
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _selectedReason = reason;
                              _isOtherSelected = isOther;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey.shade200,
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    reason,
                                    style: TextStyle(
                                      color: _selectedReason == reason
                                          ? AppColors.primary
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                                if (_selectedReason == reason)
                                  const Icon(
                                    Icons.check,
                                    color: AppColors.primary,
                                    size: 20,
                                  ),
                              ],
                            ),
                          ),
                        ),
                        // Show text field if "Other Reason" is selected
                        if (isOther && _isOtherSelected)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: TextField(
                              controller: _otherReasonController,
                              decoration: InputDecoration(
                                hintText: 'Please describe the reason',
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.grey.shade300),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.grey.shade300),
                                ),
                              ),
                              maxLines: 3,
                            ),
                          ),
                      ],
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Cancel button
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.grey.shade600,
                    ),
                    child: const Text('Cancel'),
                  ),
                  const SizedBox(width: 8),
                  // Submit button
                  ElevatedButton(
                    onPressed: _selectedReason == null ? null : _handleSubmit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
} 