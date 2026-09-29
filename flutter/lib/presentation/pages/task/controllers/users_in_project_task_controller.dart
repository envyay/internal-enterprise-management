import 'package:enterprise_management/application/use_cases/projects/get_users/get_users_by_project_id_query.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'users_in_project_task_controller.g.dart';

@Riverpod()
class UsersInProjectTaskController extends _$UsersInProjectTaskController {
  @override
  Future<List<User>> build(String projectId) async {
    return getUsersByProjectId(projectId: projectId);
  }

  Future<List<User>> getUsersByProjectId({required String projectId}) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetUsersByProjectIdQuery(projectId: projectId));
    return res.when(success: (List<User> data) {
      state = AsyncData(data);
      return data;
    }, failure: (AppFailure failure) {
      state = AsyncError(failure, StackTrace.current);
      return [];
    });
  }
}
