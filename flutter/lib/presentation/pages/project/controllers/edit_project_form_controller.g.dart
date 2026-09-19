// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_project_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditProjectFormController)
final editProjectFormControllerProvider = EditProjectFormControllerFamily._();

final class EditProjectFormControllerProvider
    extends $NotifierProvider<EditProjectFormController, EditProjectForm> {
  EditProjectFormControllerProvider._({
    required EditProjectFormControllerFamily super.from,
    required Project super.argument,
  }) : super(
         retry: null,
         name: r'editProjectFormControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$editProjectFormControllerHash();

  @override
  String toString() {
    return r'editProjectFormControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EditProjectFormController create() => EditProjectFormController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditProjectForm value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditProjectForm>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EditProjectFormControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$editProjectFormControllerHash() =>
    r'47daf7288eff5db167de02c04bc6c8daf56c0eb7';

final class EditProjectFormControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          EditProjectFormController,
          EditProjectForm,
          EditProjectForm,
          EditProjectForm,
          Project
        > {
  EditProjectFormControllerFamily._()
    : super(
        retry: null,
        name: r'editProjectFormControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EditProjectFormControllerProvider call(Project project) =>
      EditProjectFormControllerProvider._(argument: project, from: this);

  @override
  String toString() => r'editProjectFormControllerProvider';
}

abstract class _$EditProjectFormController extends $Notifier<EditProjectForm> {
  late final _$args = ref.$arg as Project;
  Project get project => _$args;

  EditProjectForm build(Project project);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<EditProjectForm, EditProjectForm>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditProjectForm, EditProjectForm>,
              EditProjectForm,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
