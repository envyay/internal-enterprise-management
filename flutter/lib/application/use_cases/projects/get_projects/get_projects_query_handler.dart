import 'package:enterprise_management/application/use_cases/projects/get_projects/get_projects_query.dart';
import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/project_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetProjectsQueryHandler extends IQueryHandler<GetProjectsQuery, List<Project>> {
  const GetProjectsQueryHandler({required this._projectRepository});

  final IProjectRepository _projectRepository;

  @override
  Future<Result<List<Project>>> handle(GetProjectsQuery query) async {
    final res = await _projectRepository.getProjects();
    return Result.success(res);
  }

}