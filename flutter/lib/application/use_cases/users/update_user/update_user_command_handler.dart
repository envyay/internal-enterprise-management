import 'package:enterprise_management/application/use_cases/users/update_user/update_user_command.dart';
import 'package:enterprise_management/infrastructure/repositories/user_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class UpdateUserCommandHandler extends ICommandHandler<UpdateUserCommand, bool> {
  const UpdateUserCommandHandler({required this._userRepository});
  final IUserRepository _userRepository;

  @override
  Future<Result<bool>> handle(UpdateUserCommand command) async {
    final res = await _userRepository.updateUser(id: command.id, fullName: command.fullName, email: command.email, status: command.status);
    return Result.success(res);
  }

}