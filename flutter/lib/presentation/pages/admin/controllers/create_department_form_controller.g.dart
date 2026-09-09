// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_department_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateDepartmentFormController)
final createDepartmentFormControllerProvider =
    CreateDepartmentFormControllerProvider._();

final class CreateDepartmentFormControllerProvider
    extends
        $NotifierProvider<
          CreateDepartmentFormController,
          CreateDepartmentForm
        > {
  CreateDepartmentFormControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createDepartmentFormControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createDepartmentFormControllerHash();

  @$internal
  @override
  CreateDepartmentFormController create() => CreateDepartmentFormController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateDepartmentForm value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateDepartmentForm>(value),
    );
  }
}

String _$createDepartmentFormControllerHash() =>
    r'6a1694c1c3a3aac40a5fc3f6b035dbbe0e88b349';

abstract class _$CreateDepartmentFormController
    extends $Notifier<CreateDepartmentForm> {
  CreateDepartmentForm build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<CreateDepartmentForm, CreateDepartmentForm>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateDepartmentForm, CreateDepartmentForm>,
              CreateDepartmentForm,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
