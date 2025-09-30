import 'package:bris_emeric/data/models/toast_notification.dart';
import 'package:bris_emeric/data/providers/toast_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToastDisplay extends ConsumerWidget {
  final Widget child;

  const ToastDisplay({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toast = ref.watch(toastProvider);

    return Stack(
      children: [
        child,
        if (toast != null)
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Center(child: _ToastNotificationWidget(toast: toast)),
          ),
      ],
    );
  }
}

class _ToastNotificationWidget extends StatelessWidget {
  final ToastNotification toast;

  const _ToastNotificationWidget({required this.toast});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400),
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(8),
          color: toast.getBackgroundColor(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: IntrinsicWidth(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(toast.getIcon(), color: toast.getTextColor(context), size: 20),
                  const SizedBox(width: 12),
                  Flexible(
                    child: Text(
                      toast.message,
                      style: TextStyle(color: toast.getTextColor(context), fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
