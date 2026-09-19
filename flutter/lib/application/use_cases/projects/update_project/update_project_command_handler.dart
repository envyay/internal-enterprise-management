import 'package:enterprise_management/application/use_cases/projects/update_project/update_project_command.dart';
import 'package:enterprise_management/infrastructure/repositories/project_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class UpdateProjectCommandHandler extends ICommandHandler<UpdateProjectCommand, bool> {
  const UpdateProjectCommandHandler({required this._projectRepository});
  final IProjectRepository _projectRepository;
  @override
  Future<Result<bool>> handle(UpdateProjectCommand command) async {
    final res = await _projectRepository.updateProject(id: command.id, name: command.name, description: command.description ,code: command.code);
    return Result.success(res);
  }

}