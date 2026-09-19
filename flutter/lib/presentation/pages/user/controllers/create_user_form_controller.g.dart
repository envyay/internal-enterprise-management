// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateUserFormController)
final createUserFormControllerProvider = CreateUserFormControllerProvider._();

final class CreateUserFormControllerProvider
    extends $NotifierProvider<CreateUserFormController, CreateUserForm> {
  CreateUserFormControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createUserFormControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createUserFormControllerHash();

  @$internal
  @override
  CreateUserFormController create() => CreateUserFormController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateUserForm value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateUserForm>(value),
    );
  }
}

String _$createUserFormControllerHash() =>
    r'f6a01a8be00dcd59a788dc15e884347624499f17';

abstract class _$CreateUserFormController extends $Notifier<CreateUserForm> {
  CreateUserForm build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<CreateUserForm, CreateUserForm>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateUserForm, CreateUserForm>,
              CreateUserForm,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
