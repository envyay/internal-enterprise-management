import 'package:enterprise_management/application/use_cases/users/user_sign_out/user_sign_out_command.dart';
import 'package:enterprise_management/infrastructure/repositories/user_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class UserSignOutCommandHandler extends ICommandHandler<UserSignOutCommand, void> {
  const UserSignOutCommandHandler({required this._userRepository});
  final IUserRepository _userRepository;
  @override
  Future<Result<void>> handle(UserSignOutCommand command) async {
    final res = await _userRepository.signOut();
    return Result.success(res);
  }
}