import 'package:enterprise_management/application/use_cases/projects/get_project/get_project_query.dart';
import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/infrastructure/repositories/project_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetProjectQueryHandler extends IQueryHandler<GetProjectQuery, Project?> {
  const GetProjectQueryHandler({required this._projectRepository});

  final IProjectRepository _projectRepository;

  @override
  Future<Result<Project?>> handle(GetProjectQuery query) async {
    final res = await _projectRepository.getProjectById(id: query.id);
    return Result.success(res);
  }
}
