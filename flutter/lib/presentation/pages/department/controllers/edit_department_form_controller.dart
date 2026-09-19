import 'package:enterprise_management/application/use_cases/departments/update_department/update_department_command.dart';
import 'package:enterprise_management/domain/aggregates/department/department.dart';
import 'package:enterprise_management/presentation/forms/edit_department_form.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/department/controllers/departments_controller.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_department_form_controller.g.dart';
@Riverpod()
class EditDepartmentFormController extends _$EditDepartmentFormController {
  @override
  EditDepartmentForm build(Department department) {
    return EditDepartmentForm(name: NameInput.dirty(department.name));
  }

  void setName(String value) {
    state = state.copyWith(name: NameInput.dirty(value));
  }

  Future<void> edit() async {
    if (state.isNotValid) return;

    final name = state.name.value;
    final mediator = ref.read(mediatorProvider);
    await mediator.send(UpdateDepartmentCommand(id: department.id, name: name));

    ref.invalidate(departmentsControllerProvider);

    final router = ref.read(appRouterProvider);
    router.pop();
  }
}
