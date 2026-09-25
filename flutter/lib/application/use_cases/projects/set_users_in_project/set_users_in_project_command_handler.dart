import 'package:enterprise_management/application/use_cases/projects/set_users_in_project/set_users_in_project_command.dart';
import 'package:enterprise_management/infrastructure/repositories/project_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class SetUsersInProjectCommandHandler extends ICommandHandler<SetUsersInProjectCommand, bool> {
  const SetUsersInProjectCommandHandler({required this._projectRepository});
  final IProjectRepository _projectRepository;

  @override
  Future<Result<bool>> handle(SetUsersInProjectCommand command) async {
    final res = await _projectRepository.setUsersInProject(id: command.id, userIds: command.userIds);
    return Result.success(res);
  }
}