import 'package:enterprise_management/infrastructure/data/dtos/departments/department_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_departments_query.freezed.dart';

@freezed
abstract class GetDepartmentsQuery with _$GetDepartmentsQuery implements IQuery<List<DepartmentDto>> {
  const factory GetDepartmentsQuery() = _GetDepartmentsQuery;
}