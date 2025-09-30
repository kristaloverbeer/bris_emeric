// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toast_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ToastNotifier)
const toastProvider = ToastNotifierProvider._();

final class ToastNotifierProvider
    extends $NotifierProvider<ToastNotifier, ToastNotification?> {
  const ToastNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toastProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toastNotifierHash();

  @$internal
  @override
  ToastNotifier create() => ToastNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ToastNotification? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ToastNotification?>(value),
    );
  }
}

String _$toastNotifierHash() => r'a17fac3cfdf6cbdc34ec40123151f7d93285463f';

abstract class _$ToastNotifier extends $Notifier<ToastNotification?> {
  ToastNotification? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ToastNotification?, ToastNotification?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ToastNotification?, ToastNotification?>,
              ToastNotification?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
