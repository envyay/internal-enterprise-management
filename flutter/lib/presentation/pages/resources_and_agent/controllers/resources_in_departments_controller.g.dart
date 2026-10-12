// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resources_in_departments_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ResourcesInDepartmentsController)
final resourcesInDepartmentsControllerProvider =
    ResourcesInDepartmentsControllerProvider._();

final class ResourcesInDepartmentsControllerProvider
    extends
        $AsyncNotifierProvider<
          ResourcesInDepartmentsController,
          List<Document>
        > {
  ResourcesInDepartmentsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resourcesInDepartmentsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resourcesInDepartmentsControllerHash();

  @$internal
  @override
  ResourcesInDepartmentsController create() =>
      ResourcesInDepartmentsController();
}

String _$resourcesInDepartmentsControllerHash() =>
    r'4b9c661bc85fe3eea4ee2b52c1795538438eae09';

abstract class _$ResourcesInDepartmentsController
    extends $AsyncNotifier<List<Document>> {
  FutureOr<List<Document>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Document>>, List<Document>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Document>>, List<Document>>,
              AsyncValue<List<Document>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
