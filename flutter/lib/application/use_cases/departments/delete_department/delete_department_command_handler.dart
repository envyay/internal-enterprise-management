import 'package:enterprise_management/application/use_cases/departments/delete_department/delete_department_command.dart';
import 'package:enterprise_management/infrastructure/repositories/department_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class DeleteDepartmentCommandHandler extends ICommandHandler<DeleteDepartmentCommand, bool> {
  const DeleteDepartmentCommandHandler({required this._departmentRepository});
  final IDepartmentRepository _departmentRepository;
  @override
  Future<Result<bool>> handle(DeleteDepartmentCommand command) async {
    final res = await _departmentRepository.deleteDepartmentById(id: command.id);
    return Result.success(res ?? false);
  }

}