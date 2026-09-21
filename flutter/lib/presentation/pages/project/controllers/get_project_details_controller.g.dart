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
        isAutoDispose: true,
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
    r'afe70039e857a1b96703e30d06eaaebe16a151e0';

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
