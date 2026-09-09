import 'package:enterprise_management/application/use_cases/user_groups/create_user_group/create_user_group_command.dart';
import 'package:enterprise_management/infrastructure/data/dtos/user_groups/user_groups_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/user_group_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class CreateUserGroupCommandHandler extends ICommandHandler<CreateUserGroupCommand, UserGroupDto> {
  const CreateUserGroupCommandHandler({required this._userGroupRepository});
  final IUserGroupRepository _userGroupRepository;
  @override
  Future<Result<UserGroupDto>> handle(CreateUserGroupCommand command) async {
    final res = await _userGroupRepository.createUserGroups(name: command.name, userIds: command.userIds);
    return Result.success(res);
  }
}