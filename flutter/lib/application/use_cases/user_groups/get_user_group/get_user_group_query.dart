import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_group_query.freezed.dart';
@freezed
abstract class GetUserGroupQuery with _$GetUserGroupQuery implements IQuery<UserGroup> {
  const factory GetUserGroupQuery({required String id}) = _GetUserGroupQuery;
}