import 'package:enterprise_management/application/use_cases/user_group_policies/get_user_group_policies/get_user_group_policies_query.dart';
import 'package:enterprise_management/domain/aggregates/user_group_policy/user_group_policy.dart';
import 'package:enterprise_management/infrastructure/repositories/user_group_policy_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/query_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetUserGroupPoliciesQueryHandler extends IQueryHandler<GetUserGroupPoliciesQuery, List<UserGroupPolicy>> {
  const GetUserGroupPoliciesQueryHandler({required this._userGroupPolicyRepository});
  final IUserGroupPolicyRepository _userGroupPolicyRepository;

  @override
  Future<Result<List<UserGroupPolicy>>> handle(GetUserGroupPoliciesQuery query) async {
    final res = await _userGroupPolicyRepository.getUserGroupPolicies();
    return Result.success(res);
  }
}