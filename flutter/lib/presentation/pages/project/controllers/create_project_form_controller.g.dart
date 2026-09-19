// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_project_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateProjectFormController)
final createProjectFormControllerProvider =
    CreateProjectFormControllerProvider._();

final class CreateProjectFormControllerProvider
    extends $NotifierProvider<CreateProjectFormController, CreateProjectForm> {
  CreateProjectFormControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createProjectFormControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createProjectFormControllerHash();

  @$internal
  @override
  CreateProjectFormController create() => CreateProjectFormController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateProjectForm value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateProjectForm>(value),
    );
  }
}

String _$createProjectFormControllerHash() =>
    r'8e5ddfce81842376bdda1029a2c8aa5783092bb9';

abstract class _$CreateProjectFormController
    extends $Notifier<CreateProjectForm> {
  CreateProjectForm build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<CreateProjectForm, CreateProjectForm>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateProjectForm, CreateProjectForm>,
              CreateProjectForm,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
