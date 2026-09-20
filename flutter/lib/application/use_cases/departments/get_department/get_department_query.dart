import 'package:enterprise_management/domain/aggregates/department/department.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_department_query.freezed.dart';
@freezed
abstract class GetDepartmentQuery with _$GetDepartmentQuery implements IQuery<Department?> {
  const factory GetDepartmentQuery({required String id}) = _GetDepartmentQuery;
}