// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toast_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$toastNotifierHash() => r'a17fac3cfdf6cbdc34ec40123151f7d93285463f';

/// See also [ToastNotifier].
@ProviderFor(ToastNotifier)
final toastNotifierProvider =
    AutoDisposeNotifierProvider<ToastNotifier, ToastNotification?>.internal(
      ToastNotifier.new,
      name: r'toastNotifierProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$toastNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ToastNotifier = AutoDisposeNotifier<ToastNotification?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
