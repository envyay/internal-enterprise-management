import 'package:enterprise_management/application/use_cases/projects/get_users/get_users_by_project_id_query.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/infrastructure/repositories/project_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetUsersByProjectIdQueryHandler extends IQueryHandler<GetUsersByProjectIdQuery, List<User>> {
  const GetUsersByProjectIdQueryHandler({required this._projectRepository});
  final IProjectRepository _projectRepository;

  @override
  Future<Result<List<User>>> handle(GetUsersByProjectIdQuery query) async {
    final res = await _projectRepository.getUsersByProjectId(projectId: query.projectId);
    return Result.success(res);
  }
}