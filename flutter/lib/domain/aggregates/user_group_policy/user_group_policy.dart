import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'user_group_policy.mapper.dart';

@MappableClass()
class UserGroupPolicy extends AggregateRoot<String> with UserGroupPolicyMappable {
  UserGroupPolicy({required super.id, required this.policy, this.userGroup, this.isActive = false});

  final String policy;
  final UserGroup? userGroup;
  final bool isActive;
}