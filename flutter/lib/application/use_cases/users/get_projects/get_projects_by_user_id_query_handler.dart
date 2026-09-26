import 'package:enterprise_management/application/use_cases/users/get_projects/get_projects_by_user_id_query.dart';
import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/infrastructure/repositories/user_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetProjectsByUserIdQueryHandler extends IQueryHandler<GetProjectsByUserIdQuery, List<Project>> {
  const GetProjectsByUserIdQueryHandler({required this._userRepository});
  final IUserRepository _userRepository;

  @override
  Future<Result<List<Project>>> handle(GetProjectsByUserIdQuery query) async {
    final res = await _userRepository.getProjectsByUserId(userId: query.userId);
    return Result.success(res);
  }
}