import 'package:enterprise_management/application/use_cases/user_groups/update_user_group/update_user_group_command.dart';
import 'package:enterprise_management/infrastructure/repositories/user_group_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class UpdateUserGroupCommandHandler extends ICommandHandler<UpdateUserGroupCommand, bool> {
  const UpdateUserGroupCommandHandler({required this._userGroupRepository});
  final IUserGroupRepository _userGroupRepository;

  @override
  Future<Result<bool>> handle(UpdateUserGroupCommand command) async {
    final res = await _userGroupRepository.updateUserGroupById(id: command.id, name: command.name, userIds: command.userIds);
    return Result.success(res);
  }

}