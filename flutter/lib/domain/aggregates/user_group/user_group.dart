import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/domain/aggregates/user_group_policy/user_group_policy.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'user_group.mapper.dart';

@MappableClass()
class UserGroup extends AggregateRoot<String> with UserGroupMappable {
  UserGroup({required super.id, required this.name, this.isActive = false, required this.users, required this.userGroupPolicies});

  final String name;
  final List<User> users;
  final List<UserGroupPolicy> userGroupPolicies;
  final bool isActive;
}