import 'package:enterprise_management/application/use_cases/user_groups/set_policies_in_user_group/set_policies_in_user_group_command.dart';
import 'package:enterprise_management/infrastructure/repositories/user_group_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class SetPoliciesInUserGroupCommandHandler extends ICommandHandler<SetPoliciesInUserGroupCommand, bool> {
  const SetPoliciesInUserGroupCommandHandler({required this._userGroupRepository});
  final IUserGroupRepository _userGroupRepository;

  @override
  Future<Result<bool>> handle(SetPoliciesInUserGroupCommand command) async {
    final res = await _userGroupRepository.setPoliciesInUserGroup(id: command.id, policyIds: command.policyIds);
    return Result.success(res);
  }
}