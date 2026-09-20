// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_in_department_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UsersInDepartmentController)
final usersInDepartmentControllerProvider =
    UsersInDepartmentControllerProvider._();

final class UsersInDepartmentControllerProvider
    extends $AsyncNotifierProvider<UsersInDepartmentController, Department?> {
  UsersInDepartmentControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usersInDepartmentControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usersInDepartmentControllerHash();

  @$internal
  @override
  UsersInDepartmentController create() => UsersInDepartmentController();
}

String _$usersInDepartmentControllerHash() =>
    r'482d23e270374ff75ba76ba07dc2a64b9cae57cd';

abstract class _$UsersInDepartmentController
    extends $AsyncNotifier<Department?> {
  FutureOr<Department?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Department?>, Department?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Department?>, Department?>,
              AsyncValue<Department?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
