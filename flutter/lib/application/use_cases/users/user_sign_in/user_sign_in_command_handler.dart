import 'package:enterprise_management/application/use_cases/users/user_sign_in/user_sign_in_command.dart';
import 'package:enterprise_management/infrastructure/repositories/users_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class UserSignInCommandHandler extends ICommandHandler<UserSignInCommand, bool> {
  const UserSignInCommandHandler({required this._userRepository});


  final IUserRepository _userRepository;

  @override
  Future<Result<bool>> handle(UserSignInCommand command) async {
    final res = await _userRepository.loginRequest(email: command.email);
    return Result.success(res ?? false);
  }
}