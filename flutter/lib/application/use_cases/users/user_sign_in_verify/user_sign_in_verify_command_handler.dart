import 'package:enterprise_management/application/use_cases/users/user_sign_in_verify/user_sign_in_verify_command.dart';
import 'package:enterprise_management/infrastructure/repositories/user_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class UserSignInVerifyCommandHandler extends ICommandHandler<UserSignInVerifyCommand, bool> {
  const UserSignInVerifyCommandHandler({required this._userRepository});


  final IUserRepository _userRepository;

  @override
  Future<Result<bool>> handle(UserSignInVerifyCommand command) async {
    final res = await _userRepository.loginVerify(email: command.email, otp: command.otp);
    return Result.success(res);
  }
}