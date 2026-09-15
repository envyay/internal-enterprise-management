import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_groups_query.freezed.dart';
@freezed
abstract class GetUserGroupsQuery with _$GetUserGroupsQuery implements IQuery<List<UserGroup>> {
  const factory GetUserGroupsQuery() = _GetUserGroupsQuery;
}