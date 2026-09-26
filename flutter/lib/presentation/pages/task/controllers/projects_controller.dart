import 'package:enterprise_management/application/use_cases/users/get_projects/get_projects_by_user_id_query.dart';
import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'projects_controller.g.dart';
@Riverpod()
class ProjectsController extends _$ProjectsController {
  @override
  Future<List<Project>> build() async {
    return [];
  }

  Future<List<Project>> getProjectsByUserId({required String userId}) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetProjectsByUserIdQuery(userId: userId));
    return res.when(success: (List<Project> data) {
      state = AsyncData(data);
      return data;
    }, failure: (AppFailure failure) {
      state = AsyncError(failure, StackTrace.current);
      return [];
    });
  }
}