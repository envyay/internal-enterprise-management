import 'package:enterprise_management/application/use_cases/projects/delete_project/delete_project_command.dart';
import 'package:enterprise_management/infrastructure/repositories/project_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class DeleteProjectCommandHandler extends ICommandHandler<DeleteProjectCommand, bool> {
  const DeleteProjectCommandHandler({required this._projectRepository});
  final IProjectRepository _projectRepository;
  @override
  Future<Result<bool>> handle(DeleteProjectCommand command) async {
    final res = await _projectRepository.deleteProject(id: command.id);
    return Result.success(res);
  }

}