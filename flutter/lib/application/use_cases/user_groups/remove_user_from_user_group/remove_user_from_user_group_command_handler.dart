import 'package:enterprise_management/application/use_cases/user_groups/remove_user_from_user_group/remove_user_from_user_group_command.dart';
import 'package:enterprise_management/infrastructure/repositories/user_group_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class RemoveUserFromUserGroupCommandHandler extends ICommandHandler<RemoveUserFromUserGroupCommand, bool> {
  const RemoveUserFromUserGroupCommandHandler({required this._userGroupRepository});

  final IUserGroupRepository _userGroupRepository;

  @override
  Future<Result<bool>> handle(RemoveUserFromUserGroupCommand command) async {
    final res = await _userGroupRepository.removeUsersFromUserGroup(id: command.id, userId: command.userId);
    return Result.success(res);
  }
}