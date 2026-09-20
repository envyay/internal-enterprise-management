// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departments_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DepartmentsController)
final departmentsControllerProvider = DepartmentsControllerProvider._();

final class DepartmentsControllerProvider
    extends $AsyncNotifierProvider<DepartmentsController, List<Department>> {
  DepartmentsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'departmentsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$departmentsControllerHash();

  @$internal
  @override
  DepartmentsController create() => DepartmentsController();
}

String _$departmentsControllerHash() =>
    r'a74845f29b057577fa9df60b2a63809873da2a6c';

abstract class _$DepartmentsController
    extends $AsyncNotifier<List<Department>> {
  FutureOr<List<Department>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<Department>>, List<Department>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Department>>, List<Department>>,
              AsyncValue<List<Department>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
