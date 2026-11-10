import 'package:enterprise_management/application/use_cases/user_groups/get_user_group/get_user_group_query.dart';
import 'package:enterprise_management/application/use_cases/user_groups/set_users_in_user_group/set_users_in_user_group_command.dart';
import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/presentation/pages/user_group/controllers/user_groups_controller.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'users_in_user_group_controller.g.dart';

@Riverpod(keepAlive: true)
class UsersInUserGroupController extends _$UsersInUserGroupController {
  @override
  Future<UserGroup?> build() async {
    return null;
  }

  Future<void> getUsersInUserGroup({required String id}) async {
    state = const AsyncLoading();
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetUserGroupQuery(id: id));

    if (!ref.mounted) return;

    res.when(
      success: (userGroup) {
        state = AsyncData(userGroup);
        if (ref.mounted) {
          ref.read(userGroupsControllerProvider.notifier).updateUserGroupUsers(id, userGroup.users);
        }
      },
      failure: (error) {
        state = AsyncError(error, StackTrace.current);
      },
    );
  }

  Future<void> setUsersInUserGroup({
    required String id,
    required List<String> userIds,
  }) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.send(
      SetUsersInUserGroupCommand(id: id, userIds: userIds),
    );

    res.when(
      success: (success) {
        if (success) {
          getUsersInUserGroup(id: id);
          ref.read(userGroupsControllerProvider.notifier).refresh();
        }
      },
      failure: (error) {
        state = AsyncError(error, StackTrace.current);
      },
    );
  }
}