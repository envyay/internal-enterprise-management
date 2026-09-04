// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthenticationController)
final authenticationControllerProvider = AuthenticationControllerProvider._();

final class AuthenticationControllerProvider
    extends $NotifierProvider<AuthenticationController, AsyncData<dynamic>> {
  AuthenticationControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationControllerHash();

  @$internal
  @override
  AuthenticationController create() => AuthenticationController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncData<dynamic> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncData<dynamic>>(value),
    );
  }
}

String _$authenticationControllerHash() =>
    r'1798413368026cc592822f84291671d621967a22';

abstract class _$AuthenticationController
    extends $Notifier<AsyncData<dynamic>> {
  AsyncData<dynamic> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncData<dynamic>, AsyncData<dynamic>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncData<dynamic>, AsyncData<dynamic>>,
              AsyncData<dynamic>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
