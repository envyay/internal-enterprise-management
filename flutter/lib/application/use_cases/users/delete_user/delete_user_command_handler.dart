import 'package:enterprise_management/application/use_cases/users/delete_user/delete_user_command.dart';
import 'package:enterprise_management/infrastructure/repositories/user_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class DeleteUserCommandHandler extends ICommandHandler<DeleteUserCommand, bool> {
  const DeleteUserCommandHandler({required this._userRepository});
  final IUserRepository _userRepository;

  @override
  Future<Result<bool>> handle(DeleteUserCommand command) async {
    final res = await _userRepository.deleteUser(id: command.id);
    return Result.success(res);
  }

}