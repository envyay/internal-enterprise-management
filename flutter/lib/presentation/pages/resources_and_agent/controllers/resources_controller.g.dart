// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resources_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ResourcesController)
final resourcesControllerProvider = ResourcesControllerProvider._();

final class ResourcesControllerProvider
    extends $AsyncNotifierProvider<ResourcesController, List<Document>> {
  ResourcesControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resourcesControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resourcesControllerHash();

  @$internal
  @override
  ResourcesController create() => ResourcesController();
}

String _$resourcesControllerHash() =>
    r'a0e8417f05cb446c67c11bfe6cc115551ef48460';

abstract class _$ResourcesController extends $AsyncNotifier<List<Document>> {
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
