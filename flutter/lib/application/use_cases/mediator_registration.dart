import 'package:enterprise_management/application/use_cases/departments/create_department/create_department_command.dart';
import 'package:enterprise_management/application/use_cases/departments/create_department/create_department_command_handler.dart';
import 'package:enterprise_management/application/use_cases/departments/get_departments/get_departments_query.dart';
import 'package:enterprise_management/application/use_cases/departments/get_departments/get_departments_query_handler.dart';
import 'package:enterprise_management/application/use_cases/departments/update_department/update_department_command.dart';
import 'package:enterprise_management/application/use_cases/departments/update_department/update_department_command_handler.dart';
import 'package:enterprise_management/application/use_cases/projects/create_project/create_project_command.dart';
import 'package:enterprise_management/application/use_cases/projects/create_project/create_project_command_handler.dart';
import 'package:enterprise_management/application/use_cases/projects/delete_project/delete_project_command.dart';
import 'package:enterprise_management/application/use_cases/projects/delete_project/delete_project_command_handler.dart';
import 'package:enterprise_management/application/use_cases/projects/get_projects/get_projects_query.dart';
import 'package:enterprise_management/application/use_cases/projects/get_projects/get_projects_query_handler.dart';
import 'package:enterprise_management/application/use_cases/projects/update_project/update_project_command.dart';
import 'package:enterprise_management/application/use_cases/projects/update_project/update_project_command_handler.dart';
import 'package:enterprise_management/application/use_cases/tickets/create_ticket/create_ticket_command.dart';
import 'package:enterprise_management/application/use_cases/tickets/create_ticket/create_ticket_command_handler.dart';
import 'package:enterprise_management/application/use_cases/tickets/delete_ticket/delete_ticket_command.dart';
import 'package:enterprise_management/application/use_cases/tickets/delete_ticket/delete_ticket_command_handler.dart';
import 'package:enterprise_management/application/use_cases/tickets/get_tickets/get_tickets_query.dart';
import 'package:enterprise_management/application/use_cases/tickets/get_tickets/get_tickets_query_handler.dart';
import 'package:enterprise_management/application/use_cases/tickets/update_ticket/update_ticket_command.dart';
import 'package:enterprise_management/application/use_cases/tickets/update_ticket/update_ticket_command_handler.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in/user_sign_in_command.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in/user_sign_in_command_handler.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in_verify/user_sign_in_verify_command.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in_verify/user_sign_in_verify_command_handler.dart';
import 'package:enterprise_management/infrastructure/data/dtos/departments/department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/providers.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';

extension MediatorRegistrationX on Mediator {
  void registerApplicationHandlers() {
    // Commands & Handlers
    //User
    registerCommandHandler<UserSignInCommand, bool>(
      UserSignInCommandHandler(userRepository: ref.read(userRepositoryProvider)),
    );

    registerCommandHandler<UserSignInVerifyCommand, bool>(
      UserSignInVerifyCommandHandler(userRepository: ref.read(userRepositoryProvider)),
    );

    //Department
    registerQueryHandler<GetDepartmentsQuery, List<DepartmentDto?>>(
      GetDepartmentsQueryHandler(departmentRepository: ref.read(departmentRepositoryProvider))
    );

    registerCommandHandler<CreateDepartmentCommand, DepartmentDto>(
      CreateDepartmentCommandHandler(departmentRepository: ref.read(departmentRepositoryProvider)),
    );

    registerCommandHandler<UpdateDepartmentCommand, bool>(
      UpdateDepartmentCommandHandler(departmentRepository: ref.read(departmentRepositoryProvider)),
    );

    //Project
    registerQueryHandler<GetProjectsQuery, List<ProjectDto?>>(
        GetProjectsQueryHandler(projectRepository: ref.read(projectRepositoryProvider))
    );

    registerCommandHandler<CreateProjectCommand, ProjectDto>(
      CreateProjectCommandHandler(projectRepository: ref.read(projectRepositoryProvider)),
    );

    registerCommandHandler<UpdateProjectCommand, bool>(
      UpdateProjectCommandHandler(projectRepository: ref.read(projectRepositoryProvider)),
    );

    registerCommandHandler<DeleteProjectCommand, bool>(
      DeleteProjectCommandHandler(projectRepository: ref.read(projectRepositoryProvider)),
    );

    //Ticket
    registerQueryHandler<GetTicketsQuery, List<TicketDto?>>(
        GetTicketsQueryHandler(ticketRepository: ref.read(ticketRepositoryProvider))
    );

    registerCommandHandler<CreateTicketCommand, TicketDto?>(
      CreateTicketCommandHandler(ticketRepository: ref.read(ticketRepositoryProvider)),
    );

    registerCommandHandler<UpdateTicketCommand, bool>(
      UpdateTicketCommandHandler(ticketRepository: ref.read(ticketRepositoryProvider)),
    );

    registerCommandHandler<DeleteTicketCommand, bool>(
      DeleteTicketCommandHandler(ticketRepository: ref.read(ticketRepositoryProvider)),
    );
  }
}
