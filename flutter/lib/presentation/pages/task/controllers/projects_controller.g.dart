// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProjectsController)
final projectsControllerProvider = ProjectsControllerProvider._();

final class ProjectsControllerProvider
    extends $AsyncNotifierProvider<ProjectsController, List<Project>> {
  ProjectsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'projectsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$projectsControllerHash();

  @$internal
  @override
  ProjectsController create() => ProjectsController();
}

String _$projectsControllerHash() =>
    r'6fb145debf3146416232e0cc9e5b744fdf38cb29';

abstract class _$ProjectsController extends $AsyncNotifier<List<Project>> {
  FutureOr<List<Project>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Project>>, List<Project>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Project>>, List<Project>>,
              AsyncValue<List<Project>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
