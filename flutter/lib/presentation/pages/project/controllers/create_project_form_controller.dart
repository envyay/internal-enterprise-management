import 'package:enterprise_management/application/use_cases/projects/create_project/create_project_command.dart';
import 'package:enterprise_management/presentation/forms/create_project_form.dart';
import 'package:enterprise_management/presentation/forms/inputs/code_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_project_form_controller.g.dart';

@Riverpod()
class CreateProjectFormController extends _$CreateProjectFormController {
  @override
  CreateProjectForm build() {
    return CreateProjectForm();
  }

  void setName(String value) {
    state = state.copyWith(name: NameInput.dirty(value));
  }

  void setDescription(String value) {
    state = state.copyWith(description: DescriptionInput.dirty(value));
  }

  void setCode(String value) {
    state = state.copyWith(code: CodeInput.dirty(value));
  }
  
  Future<void> submit() async {
    if(state.isNotValid) return;
    final name = state.name.value;
    final description = state.description.value;
    final code = state.code.value;
    final mediator = ref.read(mediatorProvider);
    await mediator.send(CreateProjectCommand(name: name, description: description, code: code));

    final router = ref.read(appRouterProvider);
    router.pop();
  }

  bool get isValid => state.isValid;
}