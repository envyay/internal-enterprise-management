import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_users_by_project_id_query.freezed.dart';
@freezed
abstract class GetUsersByProjectIdQuery with _$GetUsersByProjectIdQuery implements IQuery<List<User>> {
  const factory GetUsersByProjectIdQuery({required String projectId}) = _GetUsersByProjectIdQuery;
}