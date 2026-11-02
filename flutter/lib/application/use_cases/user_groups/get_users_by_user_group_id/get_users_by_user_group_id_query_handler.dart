import 'package:enterprise_management/application/use_cases/user_groups/get_users_by_user_group_id/get_users_by_user_group_id_query.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/infrastructure/repositories/user_group_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetUsersByUserGroupIdQueryHandler extends IQueryHandler<GetUsersByUserGroupIdQuery, List<User>> {
  const GetUsersByUserGroupIdQueryHandler({required this._userGroupRepository});
  final IUserGroupRepository _userGroupRepository;

  @override
  Future<Result<List<User>>> handle(GetUsersByUserGroupIdQuery query) async {
    final res = await _userGroupRepository.getUsersByUserGroupId(id: query.userGroupId);
    return Result.success(res);
  }
}