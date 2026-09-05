import 'package:enterprise_management/presentation/forms/inputs/email_input.dart';
import 'package:enterprise_management/presentation/forms/sign_in_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_form_controller.g.dart';

@Riverpod()
class SignInFormController extends _$SignInFormController {
  @override
  SignInForm build() {
    return SignInForm();
  }

  void setEmail(String value) {
    state = state.copyWith(email: EmailInput.dirty(value));
  }

  bool get isValid => state.isValid;
}
