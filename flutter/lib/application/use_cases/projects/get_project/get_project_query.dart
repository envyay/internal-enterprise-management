import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_project_query.freezed.dart';

@freezed
abstract class GetProjectQuery with _$GetProjectQuery implements IQuery<Project?> {
  const factory GetProjectQuery({required String id}) = _GetProjectQuery;
}