import 'package:enterprise_management/application/use_cases/departments/create_department/create_department_command.dart';
import 'package:enterprise_management/infrastructure/data/dtos/departments/department_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/department_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class CreateDepartmentCommandHandler extends ICommandHandler<CreateDepartmentCommand, String> {
  const CreateDepartmentCommandHandler({required this._departmentRepository});
  final IDepartmentRepository _departmentRepository;

  @override
  Future<Result<String>> handle(CreateDepartmentCommand command) async {
    final res = await _departmentRepository.createDepartment(name: command.name);
    return Result.success(res);
  }

}