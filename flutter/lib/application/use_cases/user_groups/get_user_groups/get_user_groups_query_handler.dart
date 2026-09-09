import 'package:enterprise_management/application/use_cases/user_groups/get_user_groups/get_user_groups_query.dart';
import 'package:enterprise_management/infrastructure/data/dtos/user_groups/user_groups_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/user_group_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetUserGroupsQueryHandler extends ICommandHandler<GetUserGroupsQuery, List<UserGroupDto>> {
  const GetUserGroupsQueryHandler({required this._userGroupRepository});
  final IUserGroupRepository _userGroupRepository;

  @override
  Future<Result<List<UserGroupDto>>> handle(GetUserGroupsQuery command) async {
    final res = await _userGroupRepository.getUserGroups();
    return Result.success(res);
  }

}