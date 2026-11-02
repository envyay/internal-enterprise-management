import 'package:enterprise_management/domain/aggregates/user_group_policy/user_group_policy.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/user_group_policy_service/user_group_policy_remote_data_source.dart';

import '../data/dtos/user_group_policies/user_group_policy_dto.dart';

abstract interface class IUserGroupPolicyRepository {
  Future<List<UserGroupPolicy>> getUserGroupPolicies();
}

class UserGroupPolicyRepository implements IUserGroupPolicyRepository {
  const UserGroupPolicyRepository({required this._userGroupPolicyRemoteDataSource});
  final UserGroupPolicyRemoteDataSource _userGroupPolicyRemoteDataSource;

  @override
  Future<List<UserGroupPolicy>> getUserGroupPolicies() async {
    final res = await _userGroupPolicyRemoteDataSource.getPolicies();
    return res.data.map((item) => item.toAggregate()).toList();
  }
}