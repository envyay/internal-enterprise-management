import 'package:enterprise_management/application/use_cases/user_groups/add_users_to_user_group/add_users_to_user_group_command.dart';
import 'package:enterprise_management/infrastructure/repositories/user_group_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class AddUsersToUserGroupCommandHandler extends ICommandHandler<AddUsersToUserGroupCommand, bool> {
  const AddUsersToUserGroupCommandHandler({required this._userGroupRepository});
  final IUserGroupRepository _userGroupRepository;

  @override
  Future<Result<bool>> handle(AddUsersToUserGroupCommand command) async {
    final res = await _userGroupRepository.addUsersToUserGroup(id: command.id, userIds: command.usersIds);
    return Result.success(res);
  }
}