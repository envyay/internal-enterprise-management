import 'package:enterprise_management/application/use_cases/users/create_user/create_user_command.dart';
import 'package:enterprise_management/presentation/forms/create_user_form.dart';
import 'package:enterprise_management/presentation/forms/inputs/email_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_user_form_controller.g.dart';
@Riverpod()
class CreateUserFormController extends _$CreateUserFormController{
  @override
  CreateUserForm build() {
    return CreateUserForm();
  }

  void setFullName(String value) {
    state = state.copyWith(fullName: NameInput.dirty(value));
  }

  void setEmail(String value) {
    state = state.copyWith(email: EmailInput.dirty(value));
  }

  Future<void> submit() async {
    if (state.isNotValid) return;

    final fullName = state.fullName.value;
    final email = state.email.value;
    final mediator = ref.read(mediatorProvider);
    await mediator.send(CreateUserCommand(fullName: fullName, email: email));

    final router = ref.read(appRouterProvider);
    router.pop();
  }

  bool get isValid => state.isValid;

}