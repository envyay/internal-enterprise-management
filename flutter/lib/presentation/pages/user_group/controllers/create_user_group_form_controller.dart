import 'package:enterprise_management/application/use_cases/user_groups/create_user_group/create_user_group_command.dart';
import 'package:enterprise_management/presentation/forms/create_user_group_form.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_user_group_form_controller.g.dart';
@Riverpod()
class CreateUserGroupFormController extends _$CreateUserGroupFormController {

  @override
  CreateUserGroupForm build() {
    return CreateUserGroupForm();
  }

  void setName(String value) {
    state = state.copyWith(name: NameInput.dirty(value));
  }

  Future<void> submit() async {
    if (state.isNotValid) return;

    final name = state.name.value;
    final mediator = ref.read(mediatorProvider);
    await mediator.send(CreateUserGroupCommand(name: name, userIds: []));

    final router = ref.read(appRouterProvider);
    router.pop();
  }

  bool get isValid => state.isValid;
}