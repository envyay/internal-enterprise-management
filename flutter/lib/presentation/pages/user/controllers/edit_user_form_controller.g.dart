// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditUserFormController)
final editUserFormControllerProvider = EditUserFormControllerFamily._();

final class EditUserFormControllerProvider
    extends $NotifierProvider<EditUserFormController, EditUserForm> {
  EditUserFormControllerProvider._({
    required EditUserFormControllerFamily super.from,
    required User super.argument,
  }) : super(
         retry: null,
         name: r'editUserFormControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$editUserFormControllerHash();

  @override
  String toString() {
    return r'editUserFormControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EditUserFormController create() => EditUserFormController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditUserForm value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditUserForm>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EditUserFormControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$editUserFormControllerHash() =>
    r'8a9476061e43f8deb54b84c4ca1349c08b1ac30f';

final class EditUserFormControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          EditUserFormController,
          EditUserForm,
          EditUserForm,
          EditUserForm,
          User
        > {
  EditUserFormControllerFamily._()
    : super(
        retry: null,
        name: r'editUserFormControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EditUserFormControllerProvider call(User user) =>
      EditUserFormControllerProvider._(argument: user, from: this);

  @override
  String toString() => r'editUserFormControllerProvider';
}

abstract class _$EditUserFormController extends $Notifier<EditUserForm> {
  late final _$args = ref.$arg as User;
  User get user => _$args;

  EditUserForm build(User user);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<EditUserForm, EditUserForm>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditUserForm, EditUserForm>,
              EditUserForm,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
