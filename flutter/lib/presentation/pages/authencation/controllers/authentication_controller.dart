import 'package:enterprise_management/application/use_cases/users/user_sign_in/user_sign_in_command.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in_verify/user_sign_in_verify_command.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/presentation/router/app_router.gr.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_controller.g.dart';

@Riverpod()
class AuthenticationController extends _$AuthenticationController {
  @override
  AsyncData build() {
    return AsyncData(null);
  }

  void login(String email) {
    final mediator = ref.read(mediatorProvider);
    mediator.send(UserSignInCommand(email: email));
  }

  void loginVerify(String email, String otp) async {
    final appRouter = ref.read(appRouterProvider);
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.send(UserSignInVerifyCommand(email: email, otp: otp));
    res.when(success: (bool data) {
      appRouter.popUntilRoot();
      appRouter.replace(MainRoute());
    }, failure: (AppFailure failure) {  });
  }
}
