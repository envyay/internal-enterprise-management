import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_projects_by_user_id_query.freezed.dart';
@freezed
abstract class GetProjectsByUserIdQuery with _$GetProjectsByUserIdQuery implements IQuery<List<Project>> {
  const factory GetProjectsByUserIdQuery({required String userId}) = _GetProjectsByUserIdQuery;
}