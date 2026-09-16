import 'package:enterprise_management/application/use_cases/user_groups/update_user_group/update_user_group_command.dart';
import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/presentation/forms/edit_user_group_form.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/user_group/controllers/user_groups_controller.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:formz/formz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_user_group_form_controller.g.dart';

@Riverpod()
class EditUserGroupFormController extends _$EditUserGroupFormController {
  @override
  EditUserGroupForm build(UserGroup userGroup) {
    return EditUserGroupForm(name: NameInput.dirty(userGroup.name));
  }

  void setName(String value) {
    state = state.copyWith(name: NameInput.dirty(value));
  }

  Future<void> edit() async {
    if (state.isNotValid) return;

    final name = state.name.value;
    final mediator = ref.read(mediatorProvider);
    await mediator.send(UpdateUserGroupCommand(id: userGroup.id, name: name, userIds: []));

    ref.invalidate(userGroupsControllerProvider);
    final router = ref.read(appRouterProvider);
    router.pop();
}

}