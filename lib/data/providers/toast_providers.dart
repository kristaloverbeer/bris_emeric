import 'package:bris_emeric/data/models/toast_notification.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'toast_providers.g.dart';

@riverpod
class ToastNotifier extends _$ToastNotifier {
  @override
  ToastNotification? build() {
    return null;
  }

  void showToast({
    required String message,
    ToastType type = ToastType.info,
    Duration duration = const Duration(seconds: 3),
  }) {
    state = ToastNotification(message: message, type: type, duration: duration);

    // Auto-dismiss the toast after the specified duration
    Future.delayed(duration, () {
      state = null;
    });
  }

  void dismissToast() {
    state = null;
  }
}
