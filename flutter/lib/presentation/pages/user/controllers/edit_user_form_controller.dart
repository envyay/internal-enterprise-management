import 'package:enterprise_management/application/use_cases/users/update_user/update_user_command.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/presentation/forms/edit_user_form.dart';
import 'package:enterprise_management/presentation/forms/inputs/email_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/user/controllers/users_controller.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_user_form_controller.g.dart';

@Riverpod()
class EditUserFormController extends _$EditUserFormController {
  @override
  EditUserForm build(User user) {
    return EditUserForm(
      fullName: NameInput.dirty(user.fullName),
      email: EmailInput.dirty(user.email),
      userStatus: user.status,
    );
  }

  void setFullName(String value) {
    state = state.copyWith(fullName: NameInput.dirty(value));
  }

  void setEmail(String value) {
    state = state.copyWith(email: EmailInput.dirty(value));
  }

  void setUserStatus(int value) {
    state = state.copyWith(userStatus: value);
  }

  Future<void> edit() async {
    if (state.isNotValid) return;

    final fullName = state.fullName.value;
    final email = state.email.value;
    final status = state.userStatus;

    final mediator = ref.read(mediatorProvider);
    await mediator.send(UpdateUserCommand(id: user.id, fullName: fullName, email: email, status: status));

    ref.invalidate(usersControllerProvider);

    final router = ref.read(appRouterProvider);
    router.pop();

  }
}