import 'package:enterprise_management/application/use_cases/projects/get_project/get_project_query.dart';
import 'package:enterprise_management/application/use_cases/projects/set_users_in_project/set_users_in_project_command.dart';
import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'users_in_project_controller.g.dart';

@Riverpod()
class UsersInProjectController extends _$UsersInProjectController {
  @override
  Future<Project?> build() async {
    return null;
  }

  Future<void> getUsersByProjectId({required String id}) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(
      GetProjectQuery(id: id),
    );
    res.when(
      success: (project) {
        state = AsyncData(project);
      },
      failure: (error) {
        state = AsyncError(error, StackTrace.current);
      },
    );
  }

  Future<void> setUsersInProject({
    required String id,
    required List<String> userIds,
  }) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.send(
      SetUsersInProjectCommand(id: id, userIds: userIds),
    );

    res.when(
      success: (success) {
        if (success) {
          getUsersByProjectId(id: id);
        }
      },
      failure: (error) {
        state = AsyncError(error, StackTrace.current);
      },
    );
  }
}
