// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_in_project_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UsersInProjectController)
final usersInProjectControllerProvider = UsersInProjectControllerProvider._();

final class UsersInProjectControllerProvider
    extends $AsyncNotifierProvider<UsersInProjectController, Project?> {
  UsersInProjectControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usersInProjectControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usersInProjectControllerHash();

  @$internal
  @override
  UsersInProjectController create() => UsersInProjectController();
}

String _$usersInProjectControllerHash() =>
    r'bd7518aefd807cc1575982d8ec6544463a80ee43';

abstract class _$UsersInProjectController extends $AsyncNotifier<Project?> {
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
