import 'package:enterprise_management/application/use_cases/departments/delete_department/delete_department_command.dart';
import 'package:enterprise_management/application/use_cases/departments/get_departments/get_departments_query.dart';
import 'package:enterprise_management/domain/aggregates/department/department.dart';
import 'package:enterprise_management/presentation/pages/department/controllers/users_in_department_controller.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'departments_controller.g.dart';

@Riverpod()
class DepartmentsController extends _$DepartmentsController {
  @override
  Future<List<Department>> build() {
    return getDepartments();
  }

  Future<List<Department>> getDepartments() async {
    final mediator = ref.read(mediatorProvider);
    state = AsyncLoading();
    final res = await mediator.query(GetDepartmentsQuery());
    return res.when(
      success: (List<Department> data) {
        state = AsyncData(data);
        return data;
      },
      failure: (AppFailure failure) {
        state = AsyncError(failure, StackTrace.current);
        return [];
      },
    );
  }

  void refresh() async {
    final data = await getDepartments();
    state = AsyncValue.data(data);
  }

  Future<void> delete(String id) async {
    final mediator = ref.read(mediatorProvider);
    await mediator.send(DeleteDepartmentCommand(id: id));
    refresh();
  }

  Future<void> onSelect(String id) async {
    final items = state.value;
    if (items == null) return;

    final newItems = items.map((item) {
      if (item.id == id) {
        return item.copyWith.call(isActive: true);
      }
      return item.copyWith.call(isActive: false);
    }).toList();

    state = AsyncData(newItems);

    final usersInDepartmentController = ref.watch(usersInDepartmentControllerProvider.notifier);
    usersInDepartmentController.getUsersInDepartment(id: id);
  }

  void edit() async {

  }
}
