// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_group_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateUserGroupFormController)
final createUserGroupFormControllerProvider =
    CreateUserGroupFormControllerProvider._();

final class CreateUserGroupFormControllerProvider
    extends
        $NotifierProvider<CreateUserGroupFormController, CreateUserGroupForm> {
  CreateUserGroupFormControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createUserGroupFormControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createUserGroupFormControllerHash();

  @$internal
  @override
  CreateUserGroupFormController create() => CreateUserGroupFormController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateUserGroupForm value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateUserGroupForm>(value),
    );
  }
}

String _$createUserGroupFormControllerHash() =>
    r'18a3e0ed03ac439d696fc7d2dee10a5b01b119bc';

abstract class _$CreateUserGroupFormController
    extends $Notifier<CreateUserGroupForm> {
  CreateUserGroupForm build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<CreateUserGroupForm, CreateUserGroupForm>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateUserGroupForm, CreateUserGroupForm>,
              CreateUserGroupForm,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
