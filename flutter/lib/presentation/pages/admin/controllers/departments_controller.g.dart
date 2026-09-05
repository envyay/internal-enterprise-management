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
    extends $AsyncNotifierProvider<DepartmentsController, List<DepartmentDto>> {
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
    r'92da86aefadd3170257b501c5cb89abb5a3fdf47';

abstract class _$DepartmentsController
    extends $AsyncNotifier<List<DepartmentDto>> {
  FutureOr<List<DepartmentDto>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<DepartmentDto>>, List<DepartmentDto>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<DepartmentDto>>, List<DepartmentDto>>,
              AsyncValue<List<DepartmentDto>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
