import 'package:enterprise_management/application/use_cases/departments/get_departments/get_departments_query.dart';
import 'package:enterprise_management/infrastructure/data/dtos/departments/department_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/department_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetDepartmentsQueryHandler extends IQueryHandler<GetDepartmentsQuery, List<DepartmentDto>> {
  const GetDepartmentsQueryHandler({required this._departmentRepository});

  final IDepartmentRepository _departmentRepository;

  @override
  Future<Result<List<DepartmentDto>>> handle(GetDepartmentsQuery query) async {
    final res = await _departmentRepository.getDepartments();
    return Result.success(res);
  }}