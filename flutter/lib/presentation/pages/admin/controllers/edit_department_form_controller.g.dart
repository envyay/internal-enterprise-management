// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_department_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditDepartmentFormController)
final editDepartmentFormControllerProvider =
    EditDepartmentFormControllerFamily._();

final class EditDepartmentFormControllerProvider
    extends
        $NotifierProvider<EditDepartmentFormController, EditDepartmentForm> {
  EditDepartmentFormControllerProvider._({
    required EditDepartmentFormControllerFamily super.from,
    required Department super.argument,
  }) : super(
         retry: null,
         name: r'editDepartmentFormControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$editDepartmentFormControllerHash();

  @override
  String toString() {
    return r'editDepartmentFormControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EditDepartmentFormController create() => EditDepartmentFormController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditDepartmentForm value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditDepartmentForm>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EditDepartmentFormControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$editDepartmentFormControllerHash() =>
    r'5ee262c0d724f2e09be8c12b237c864b3024025c';

final class EditDepartmentFormControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          EditDepartmentFormController,
          EditDepartmentForm,
          EditDepartmentForm,
          EditDepartmentForm,
          Department
        > {
  EditDepartmentFormControllerFamily._()
    : super(
        retry: null,
        name: r'editDepartmentFormControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EditDepartmentFormControllerProvider call(Department department) =>
      EditDepartmentFormControllerProvider._(argument: department, from: this);

  @override
  String toString() => r'editDepartmentFormControllerProvider';
}

abstract class _$EditDepartmentFormController
    extends $Notifier<EditDepartmentForm> {
  late final _$args = ref.$arg as Department;
  Department get department => _$args;

  EditDepartmentForm build(Department department);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<EditDepartmentForm, EditDepartmentForm>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditDepartmentForm, EditDepartmentForm>,
              EditDepartmentForm,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
