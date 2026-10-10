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
    extends $NotifierProvider<ResourcesController, dynamic> {
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(dynamic value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<dynamic>(value),
    );
  }
}

String _$resourcesControllerHash() =>
    r'cc5b9edf6102ea84eca2003f143f697b22f61902';

abstract class _$ResourcesController extends $Notifier<dynamic> {
  dynamic build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<dynamic, dynamic>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<dynamic, dynamic>,
              dynamic,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
