import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_users_by_user_group_id_query.freezed.dart';
@freezed
abstract class GetUsersByUserGroupIdQuery with _$GetUsersByUserGroupIdQuery implements IQuery<List<User>> {
  const factory GetUsersByUserGroupIdQuery({required String userGroupId}) = _GetUsersByUserGroupIdQuery;
}