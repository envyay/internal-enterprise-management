import 'package:enterprise_management/application/use_cases/user_groups/set_users_in_user_group/set_users_in_user_group_command.dart';
import 'package:enterprise_management/infrastructure/repositories/user_group_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class SetUsersInUserGroupCommandHandler extends ICommandHandler<SetUsersInUserGroupCommand, bool> {
  const SetUsersInUserGroupCommandHandler({required this._userGroupRepository});
  final IUserGroupRepository _userGroupRepository;

  @override
  Future<Result<bool>> handle(SetUsersInUserGroupCommand command) async {
    final res = await _userGroupRepository.setUsersInUserGroup(id: command.id, userIds: command.userIds);
    return Result.success(res);
  }
}