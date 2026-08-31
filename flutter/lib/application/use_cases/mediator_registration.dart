import 'package:enterprise_management/application/use_cases/users/user_sign_in/user_sign_in_command.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in/user_sign_in_command_handler.dart';
import 'package:enterprise_management/infrastructure/repositories/providers.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';

extension MediatorRegistrationX on Mediator {
  void registerApplicationHandlers() {
    // Commands & Handlers
    registerCommandHandler<UserSignInCommand, bool>(
      UserSignInCommandHandler(userRepository: ref.read(userRepositoryProvider)),
    );
  }
}
