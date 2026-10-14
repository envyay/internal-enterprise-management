// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resources_in_tickets_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ResourcesInTicketsController)
final resourcesInTicketsControllerProvider =
    ResourcesInTicketsControllerProvider._();

final class ResourcesInTicketsControllerProvider
    extends
        $AsyncNotifierProvider<ResourcesInTicketsController, List<Document>> {
  ResourcesInTicketsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resourcesInTicketsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resourcesInTicketsControllerHash();

  @$internal
  @override
  ResourcesInTicketsController create() => ResourcesInTicketsController();
}

String _$resourcesInTicketsControllerHash() =>
    r'3174770b87fbbcbf8e4b31d376cd30be89c9ee65';

abstract class _$ResourcesInTicketsController
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
