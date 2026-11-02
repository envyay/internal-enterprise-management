import 'package:enterprise_management/application/use_cases/user_groups/get_user_group/get_user_group_query.dart';
import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/infrastructure/repositories/user_group_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetUserGroupQueryHandler extends IQueryHandler<GetUserGroupQuery, UserGroup> {
  const GetUserGroupQueryHandler({required this._userGroupRepository});
  final IUserGroupRepository _userGroupRepository;
  @override
  Future<Result<UserGroup>> handle(GetUserGroupQuery query) async {
    final res = await _userGroupRepository.getUserGroupById(id: query.id);
    return Result.success(res);
  }
}