import 'package:enterprise_management/application/use_cases/user_groups/delete_user_group/delete_user_group_command.dart';
import 'package:enterprise_management/infrastructure/repositories/user_group_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class DeleteUserGroupCommandHandler extends ICommandHandler<DeleteUserGroupCommand, bool> {
  const DeleteUserGroupCommandHandler({required this._userGroupRepository});
  final IUserGroupRepository _userGroupRepository;
  @override
  Future<Result<bool>> handle(DeleteUserGroupCommand command) async {
    final res = await _userGroupRepository.deleteUserGroupById(id: command.id);
    return Result.success(res);
  }

}