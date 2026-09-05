import 'package:enterprise_management/application/use_cases/departments/get_departments/get_departments_query.dart';
import 'package:enterprise_management/application/use_cases/departments/get_departments/get_departments_query_handler.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in/user_sign_in_command.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in/user_sign_in_command_handler.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in_verify/user_sign_in_verify_command.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in_verify/user_sign_in_verify_command_handler.dart';
import 'package:enterprise_management/infrastructure/data/dtos/departments/department_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/providers.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';

extension MediatorRegistrationX on Mediator {
  void registerApplicationHandlers() {
    // Commands & Handlers
    registerCommandHandler<UserSignInCommand, bool>(
      UserSignInCommandHandler(userRepository: ref.read(userRepositoryProvider)),
    );

    registerCommandHandler<UserSignInVerifyCommand, bool>(
      UserSignInVerifyCommandHandler(userRepository: ref.read(userRepositoryProvider)),
    );

    registerQueryHandler<GetDepartmentsQuery, List<DepartmentDto?>>(
      GetDepartmentsQueryHandler(departmentRepository: ref.read(departmentRepositoryProvider))
    );
  }
}
