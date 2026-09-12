import 'package:enterprise_management/domain/aggregates/department/department.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_departments_query.freezed.dart';

@freezed
abstract class GetDepartmentsQuery with _$GetDepartmentsQuery implements IQuery<List<Department>> {
  const factory GetDepartmentsQuery() = _GetDepartmentsQuery;
}