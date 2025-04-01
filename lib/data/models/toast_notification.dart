import 'package:bris_emeric/config/theme.dart';
import 'package:flutter/material.dart';

enum ToastType { error, success, info }

class ToastNotification {
  final String message;
  final ToastType type;
  final Duration duration;

  const ToastNotification({
    required this.message,
    this.type = ToastType.info,
    this.duration = const Duration(seconds: 3),
  });

  Color getBackgroundColor(BuildContext context) {
    switch (type) {
      case ToastType.error:
        return AppColors.error;
      case ToastType.success:
        return AppColors.success;
      case ToastType.info:
        return Colors.blue.shade800;
    }
  }

  Color getTextColor(BuildContext context) {
    return Colors.white;
  }

  IconData getIcon() {
    switch (type) {
      case ToastType.error:
        return Icons.error_outline;
      case ToastType.success:
        return Icons.check_circle_outline;
      case ToastType.info:
        return Icons.info_outline;
    }
  }
}
