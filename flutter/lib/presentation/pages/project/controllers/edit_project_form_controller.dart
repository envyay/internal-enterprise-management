import 'package:enterprise_management/application/use_cases/projects/update_project/update_project_command.dart';
import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/presentation/forms/edit_project_form.dart';
import 'package:enterprise_management/presentation/forms/inputs/code_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/projects_controller.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_project_form_controller.g.dart';

@Riverpod()
class EditProjectFormController extends _$EditProjectFormController {
  @override
  EditProjectForm build(Project project) {
    return EditProjectForm(
      name: NameInput.dirty(project.name),
      description: DescriptionInput.dirty(project.description),
      code: CodeInput.dirty(project.code),
    );
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

  Future<void> edit() async {
    if (state.isNotValid) return;

    final name = state.name.value;
    final description = state.description.value;
    final code = state.code.value;

    final mediator = ref.read(mediatorProvider);
    await mediator.send(UpdateProjectCommand(id: project.id, name: name, description: description, code: code));
    
    ref.invalidate(projectsControllerProvider);

    final router = ref.read(appRouterProvider);
    router.pop();

  }
}