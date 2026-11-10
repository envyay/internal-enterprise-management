// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user_group_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditUserGroupFormController)
final editUserGroupFormControllerProvider =
    EditUserGroupFormControllerFamily._();

final class EditUserGroupFormControllerProvider
    extends $NotifierProvider<EditUserGroupFormController, EditUserGroupForm> {
  EditUserGroupFormControllerProvider._({
    required EditUserGroupFormControllerFamily super.from,
    required UserGroup super.argument,
  }) : super(
         retry: null,
         name: r'editUserGroupFormControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$editUserGroupFormControllerHash();

  @override
  String toString() {
    return r'editUserGroupFormControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EditUserGroupFormController create() => EditUserGroupFormController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditUserGroupForm value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditUserGroupForm>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EditUserGroupFormControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$editUserGroupFormControllerHash() =>
    r'23b4f180fab0680691468fc50847665af7166f1d';

final class EditUserGroupFormControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          EditUserGroupFormController,
          EditUserGroupForm,
          EditUserGroupForm,
          EditUserGroupForm,
          UserGroup
        > {
  EditUserGroupFormControllerFamily._()
    : super(
        retry: null,
        name: r'editUserGroupFormControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EditUserGroupFormControllerProvider call(UserGroup userGroup) =>
      EditUserGroupFormControllerProvider._(argument: userGroup, from: this);

  @override
  String toString() => r'editUserGroupFormControllerProvider';
}

abstract class _$EditUserGroupFormController
    extends $Notifier<EditUserGroupForm> {
  late final _$args = ref.$arg as UserGroup;
  UserGroup get userGroup => _$args;

  EditUserGroupForm build(UserGroup userGroup);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<EditUserGroupForm, EditUserGroupForm>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditUserGroupForm, EditUserGroupForm>,
              EditUserGroupForm,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
