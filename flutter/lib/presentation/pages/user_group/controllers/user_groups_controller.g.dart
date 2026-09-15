// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_groups_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserGroupsController)
final userGroupsControllerProvider = UserGroupsControllerProvider._();

final class UserGroupsControllerProvider
    extends $AsyncNotifierProvider<UserGroupsController, List<UserGroup>> {
  UserGroupsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userGroupsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userGroupsControllerHash();

  @$internal
  @override
  UserGroupsController create() => UserGroupsController();
}

String _$userGroupsControllerHash() =>
    r'b60fc5932143acefcc2b60b14c79c1d34769997e';

abstract class _$UserGroupsController extends $AsyncNotifier<List<UserGroup>> {
  FutureOr<List<UserGroup>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<UserGroup>>, List<UserGroup>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<UserGroup>>, List<UserGroup>>,
              AsyncValue<List<UserGroup>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
