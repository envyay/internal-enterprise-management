import 'package:enterprise_management/application/use_cases/departments/get_department/get_department_query.dart';
import 'package:enterprise_management/application/use_cases/departments/set_users_in_department/set_users_in_department_command.dart';
import 'package:enterprise_management/domain/aggregates/department/department.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared_kernel/result/result.dart';

part 'users_in_department_controller.g.dart';

@Riverpod(keepAlive: true)
class UsersInDepartmentController extends _$UsersInDepartmentController {
  @override
  Future<Department?> build() async {
    return null;
  }

  Future<void> getUsersInDepartment({required String id}) async {
    state = const AsyncLoading();
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetDepartmentQuery(id: id));
    if (!ref.mounted) return;

    res.when(
      success: (department) {
        state = AsyncData(department);
      },
      failure: (error) {
        state = AsyncError(error, StackTrace.current);
      },
    );
  }

  Future<void> setUsersInDepartment({
    required String id,
    required List<String> userIds,
  }) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.send(
      SetUsersInDepartmentCommand(id: id, userIds: userIds),
    );

    res.when(
      success: (success) {
        if (success) {
          getUsersInDepartment(id: id);
        }
      },
      failure: (error) {
        state = AsyncError(error, StackTrace.current);
      },
    );
  }
}
