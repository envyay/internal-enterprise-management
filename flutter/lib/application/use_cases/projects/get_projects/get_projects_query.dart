import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_projects_query.freezed.dart';
@freezed
abstract class GetProjectsQuery with _$GetProjectsQuery implements IQuery<List<ProjectDto>> {
  const factory GetProjectsQuery() = _GetProjectsQuery;
}