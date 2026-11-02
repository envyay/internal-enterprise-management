import 'package:enterprise_management/domain/aggregates/user_group_policy/user_group_policy.dart';
import 'package:enterprise_management/shared_kernel/cqrs/query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_group_policies_query.freezed.dart';

@freezed
abstract class GetUserGroupPoliciesQuery with _$GetUserGroupPoliciesQuery implements IQuery<List<UserGroupPolicy>> {
  const factory GetUserGroupPoliciesQuery() = _GetUserGroupPoliciesQuery;
}