import 'package:enterprise_management/application/use_cases/departments/set_users_in_department/set_users_in_department_command.dart';
import 'package:enterprise_management/infrastructure/repositories/department_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class SetUsersInDepartmentCommandHandler extends ICommandHandler<SetUsersInDepartmentCommand, bool> {
  const SetUsersInDepartmentCommandHandler({
    required this._departmentRepository,
  });

  final IDepartmentRepository _departmentRepository;

  @override
  Future<Result<bool>> handle(SetUsersInDepartmentCommand command) async {
    final res = await _departmentRepository.setUsersInDepartment(
      id: command.id,
      userIds: command.userIds,
    );
    return Result.success(res);
  }
}
