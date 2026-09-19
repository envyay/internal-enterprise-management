import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_projects_query.freezed.dart';
@freezed
abstract class GetProjectsQuery with _$GetProjectsQuery implements IQuery<List<Project>> {
  const factory GetProjectsQuery() = _GetProjectsQuery;
}