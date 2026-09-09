import 'package:enterprise_management/application/use_cases/departments/create_department/create_department_command_handler.dart';
import 'package:enterprise_management/application/use_cases/departments/update_department/update_department_command.dart';
import 'package:enterprise_management/infrastructure/repositories/department_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class UpdateDepartmentCommandHandler extends ICommandHandler<UpdateDepartmentCommand, bool> {
  const UpdateDepartmentCommandHandler({required this._departmentRepository});
  final IDepartmentRepository _departmentRepository;

  @override
  Future<Result<bool>> handle(UpdateDepartmentCommand command) async {
    final res = await _departmentRepository.updateDepartmentById(id: command.id, name: command.name);
    return Result.success(res);
  }


}