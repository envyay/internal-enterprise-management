import 'package:enterprise_management/application/use_cases/departments/create_department/create_department_command.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../forms/create_department_form.dart';

part 'create_department_form_controller.g.dart';

@Riverpod()
class CreateDepartmentFormController extends _$CreateDepartmentFormController {
  @override
  CreateDepartmentForm build() {
    return CreateDepartmentForm();
  }

  void  setName(String value) {
    state = state.copyWith(name: NameInput.dirty(value));
  }

  Future<void> submit() async {
    if(state.isNotValid) return;

    final name = state.name.value;
    final mediator = ref.read(mediatorProvider);
    await mediator.send(CreateDepartmentCommand(name: name));

    final router = ref.read(appRouterProvider);
    router.pop();
  }

  bool get isValid => state.isValid;
}
