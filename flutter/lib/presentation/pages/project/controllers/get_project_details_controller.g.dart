// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_project_details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GetProjectDetailsController)
final getProjectDetailsControllerProvider =
    GetProjectDetailsControllerProvider._();

final class GetProjectDetailsControllerProvider
    extends $AsyncNotifierProvider<GetProjectDetailsController, Project?> {
  GetProjectDetailsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getProjectDetailsControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getProjectDetailsControllerHash();

  @$internal
  @override
  GetProjectDetailsController create() => GetProjectDetailsController();
}

String _$getProjectDetailsControllerHash() =>
    r'7075461d021cca331102c63853800811482a6089';

abstract class _$GetProjectDetailsController extends $AsyncNotifier<Project?> {
  FutureOr<Project?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Project?>, Project?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Project?>, Project?>,
              AsyncValue<Project?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
