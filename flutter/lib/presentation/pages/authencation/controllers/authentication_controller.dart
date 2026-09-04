import 'package:enterprise_management/application/use_cases/users/user_sign_in/user_sign_in_command.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in_verify/user_sign_in_verify_command.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_controller.g.dart';

@Riverpod()
class AuthenticationController extends _$AuthenticationController {
  @override
  AsyncData build() {
    return AsyncData(null);
  }

  void login() {
    final mediator = ref.read(mediatorProvider);
    mediator.send(UserSignInCommand(email: "viannguyen119@gmail.com"));
  }

  void loginVerify(String otp) {
    final mediator = ref.read(mediatorProvider);
    mediator.send(UserSignInVerifyCommand(email: "viannguyen119@gmail.com", otp: otp));
  }
}
