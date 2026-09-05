// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignInFormController)
final signInFormControllerProvider = SignInFormControllerProvider._();

final class SignInFormControllerProvider
    extends $NotifierProvider<SignInFormController, SignInForm> {
  SignInFormControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signInFormControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signInFormControllerHash();

  @$internal
  @override
  SignInFormController create() => SignInFormController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignInForm value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignInForm>(value),
    );
  }
}

String _$signInFormControllerHash() =>
    r'11f6d68a326e0537ee679c4c1a79ab0728fda8c7';

abstract class _$SignInFormController extends $Notifier<SignInForm> {
  SignInForm build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<SignInForm, SignInForm>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SignInForm, SignInForm>,
              SignInForm,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
