import 'package:enterprise_management/application/use_cases/departments/get_department/get_department_query.dart';
import 'package:enterprise_management/domain/aggregates/department/department.dart';
import 'package:enterprise_management/infrastructure/repositories/department_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetDepartmentQueryHandler extends IQueryHandler<GetDepartmentQuery, Department?> {
  const GetDepartmentQueryHandler({required this._departmentRepository});
  final IDepartmentRepository _departmentRepository;

  @override
  Future<Result<Department?>> handle(GetDepartmentQuery query) async {
    final res = await _departmentRepository.getDepartmentById(id: query.id);
    return Result.success(res);
  }

}