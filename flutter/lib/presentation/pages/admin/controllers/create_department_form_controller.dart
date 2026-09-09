import 'package:enterprise_management/presentation/forms/inputs/department_name_input.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../forms/create_department_form.dart';

part 'create_department_form_controller.g.dart';

@Riverpod()
class CreateDepartmentFormController extends _$CreateDepartmentFormController {
  @override
  CreateDepartmentForm build() {
    return CreateDepartmentForm();
  }

  void setName(String value) {
    state = state.copyWith(name: DepartmentNameInput.dirty(value));
  }

  bool get isValid => state.isValid;
}
