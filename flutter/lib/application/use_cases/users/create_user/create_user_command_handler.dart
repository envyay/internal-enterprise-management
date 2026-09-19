import 'package:enterprise_management/application/use_cases/users/create_user/create_user_command.dart';
import 'package:enterprise_management/infrastructure/repositories/user_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class CreateUserCommandHandler extends ICommandHandler<CreateUserCommand, String> {
  const CreateUserCommandHandler({required this._userRepository});
  final IUserRepository _userRepository;

  @override
  Future<Result<String>> handle(CreateUserCommand command) async {
    final res = await _userRepository.createUser(fullName: command.fullName, email: command.email);
    return Result.success(res);
  }

}