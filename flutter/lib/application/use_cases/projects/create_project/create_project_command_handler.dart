import 'package:enterprise_management/application/use_cases/projects/create_project/create_project_command.dart';
import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/project_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class CreateProjectCommandHandler extends ICommandHandler<CreateProjectCommand, ProjectDto> {
  const CreateProjectCommandHandler({required this._projectRepository});

  final IProjectRepository _projectRepository;

  @override
  Future<Result<ProjectDto>> handle(CreateProjectCommand command) async {
    final res = await _projectRepository.createProject(name: command.name);
    return Result.success(res);
  }}