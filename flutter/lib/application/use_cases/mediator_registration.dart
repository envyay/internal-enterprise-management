import 'package:enterprise_management/application/use_cases/comments/create_comment/create_comment_command.dart';
import 'package:enterprise_management/application/use_cases/comments/create_comment/create_comment_command_handler.dart';
import 'package:enterprise_management/application/use_cases/comments/delete_comment/delete_comment_command.dart';
import 'package:enterprise_management/application/use_cases/comments/delete_comment/delete_comment_command_handler.dart';
import 'package:enterprise_management/application/use_cases/comments/get_comments/get_comments_query.dart';
import 'package:enterprise_management/application/use_cases/comments/get_comments/get_comments_query_handler.dart';
import 'package:enterprise_management/application/use_cases/comments/update_comment/update_comment_command.dart';
import 'package:enterprise_management/application/use_cases/comments/update_comment/update_comment_command_handler.dart';
import 'package:enterprise_management/application/use_cases/departments/create_department/create_department_command.dart';
import 'package:enterprise_management/application/use_cases/departments/create_department/create_department_command_handler.dart';
import 'package:enterprise_management/application/use_cases/departments/delete_department/delete_department_command.dart';
import 'package:enterprise_management/application/use_cases/departments/delete_department/delete_department_command_handler.dart';
import 'package:enterprise_management/application/use_cases/departments/get_departments/get_departments_query.dart';
import 'package:enterprise_management/application/use_cases/departments/get_departments/get_departments_query_handler.dart';
import 'package:enterprise_management/application/use_cases/departments/update_department/update_department_command.dart';
import 'package:enterprise_management/application/use_cases/departments/update_department/update_department_command_handler.dart';
import 'package:enterprise_management/application/use_cases/documents/create_document/create_document_command.dart';
import 'package:enterprise_management/application/use_cases/documents/create_document/create_document_command_handler.dart';
import 'package:enterprise_management/application/use_cases/documents/delete_document/delete_document_command.dart';
import 'package:enterprise_management/application/use_cases/documents/delete_document/delete_document_command_handler.dart';
import 'package:enterprise_management/application/use_cases/documents/download_document/download_document_command_handler.dart';
import 'package:enterprise_management/application/use_cases/documents/download_document/download_document_query.dart';
import 'package:enterprise_management/application/use_cases/documents/get_documents/get_documents_query.dart';
import 'package:enterprise_management/application/use_cases/documents/get_documents/get_documents_query_handler.dart';
import 'package:enterprise_management/application/use_cases/documents/update_document/update_document_command.dart';
import 'package:enterprise_management/application/use_cases/documents/update_document/update_document_command_handler.dart';
import 'package:enterprise_management/application/use_cases/documents/upload_document/upload_document_query.dart';
import 'package:enterprise_management/application/use_cases/documents/upload_document/upload_document_query_handler.dart';
import 'package:enterprise_management/application/use_cases/projects/create_project/create_project_command.dart';
import 'package:enterprise_management/application/use_cases/projects/create_project/create_project_command_handler.dart';
import 'package:enterprise_management/application/use_cases/projects/delete_project/delete_project_command.dart';
import 'package:enterprise_management/application/use_cases/projects/delete_project/delete_project_command_handler.dart';
import 'package:enterprise_management/application/use_cases/projects/get_projects/get_projects_query.dart';
import 'package:enterprise_management/application/use_cases/projects/get_projects/get_projects_query_handler.dart';
import 'package:enterprise_management/application/use_cases/projects/update_project/update_project_command.dart';
import 'package:enterprise_management/application/use_cases/projects/update_project/update_project_command_handler.dart';
import 'package:enterprise_management/application/use_cases/ticket_statuses/create_ticket_status/create_ticket_status_command.dart';
import 'package:enterprise_management/application/use_cases/ticket_statuses/create_ticket_status/create_ticket_status_command_handler.dart';
import 'package:enterprise_management/application/use_cases/ticket_statuses/delete_ticket_status/delete_ticket_status_command.dart';
import 'package:enterprise_management/application/use_cases/ticket_statuses/delete_ticket_status/delete_ticket_status_command_handler.dart';
import 'package:enterprise_management/application/use_cases/ticket_statuses/get_ticket_statuses/get_ticket_status_query.dart';
import 'package:enterprise_management/application/use_cases/ticket_statuses/get_ticket_statuses/get_ticket_status_query_handler.dart';
import 'package:enterprise_management/application/use_cases/ticket_statuses/update_ticket_status/update_ticket_status_command.dart';
import 'package:enterprise_management/application/use_cases/ticket_statuses/update_ticket_status/update_ticket_status_command_handler.dart';
import 'package:enterprise_management/application/use_cases/tickets/create_ticket/create_ticket_command.dart';
import 'package:enterprise_management/application/use_cases/tickets/create_ticket/create_ticket_command_handler.dart';
import 'package:enterprise_management/application/use_cases/tickets/delete_ticket/delete_ticket_command.dart';
import 'package:enterprise_management/application/use_cases/tickets/delete_ticket/delete_ticket_command_handler.dart';
import 'package:enterprise_management/application/use_cases/tickets/get_tickets/get_tickets_query.dart';
import 'package:enterprise_management/application/use_cases/tickets/get_tickets/get_tickets_query_handler.dart';
import 'package:enterprise_management/application/use_cases/tickets/update_ticket/update_ticket_command.dart';
import 'package:enterprise_management/application/use_cases/tickets/update_ticket/update_ticket_command_handler.dart';
import 'package:enterprise_management/application/use_cases/user_groups/add_users_to_user_group/add_users_to_user_group_command.dart';
import 'package:enterprise_management/application/use_cases/user_groups/add_users_to_user_group/add_users_to_user_group_command_handler.dart';
import 'package:enterprise_management/application/use_cases/user_groups/create_user_group/create_user_group_command.dart';
import 'package:enterprise_management/application/use_cases/user_groups/create_user_group/create_user_group_command_handler.dart';
import 'package:enterprise_management/application/use_cases/user_groups/delete_user_group/delete_user_group_command.dart';
import 'package:enterprise_management/application/use_cases/user_groups/delete_user_group/delete_user_group_command_handler.dart';
import 'package:enterprise_management/application/use_cases/user_groups/get_user_groups/get_user_groups_query.dart';
import 'package:enterprise_management/application/use_cases/user_groups/get_user_groups/get_user_groups_query_handler.dart';
import 'package:enterprise_management/application/use_cases/user_groups/remove_user_from_user_group/remove_user_from_user_group_command.dart';
import 'package:enterprise_management/application/use_cases/user_groups/remove_user_from_user_group/remove_user_from_user_group_command_handler.dart';
import 'package:enterprise_management/application/use_cases/user_groups/update_user_group/update_user_group_command.dart';
import 'package:enterprise_management/application/use_cases/user_groups/update_user_group/update_user_group_command_handler.dart';
import 'package:enterprise_management/application/use_cases/users/create_user/create_user_command.dart';
import 'package:enterprise_management/application/use_cases/users/create_user/create_user_command_handler.dart';
import 'package:enterprise_management/application/use_cases/users/delete_user/delete_user_command.dart';
import 'package:enterprise_management/application/use_cases/users/delete_user/delete_user_command_handler.dart';
import 'package:enterprise_management/application/use_cases/users/get_users/get_user_query.dart';
import 'package:enterprise_management/application/use_cases/users/get_users/get_user_query_handler.dart';
import 'package:enterprise_management/application/use_cases/users/update_user/update_user_command.dart';
import 'package:enterprise_management/application/use_cases/users/update_user/update_user_command_handler.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in/user_sign_in_command.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in/user_sign_in_command_handler.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in_verify/user_sign_in_verify_command.dart';
import 'package:enterprise_management/application/use_cases/users/user_sign_in_verify/user_sign_in_verify_command_handler.dart';
import 'package:enterprise_management/domain/aggregates/department/department.dart';
import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/infrastructure/data/dtos/comments/comment_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/documents/document_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/ticket_statuses/ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/user_groups/user_groups_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/providers.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';

extension MediatorRegistrationX on Mediator {
  void registerApplicationHandlers() {
    // Commands & Handlers
    //User
    registerQueryHandler<GetUserQuery, List<User>>(
        GetUserQueryHandler(userRepository: ref.read(userRepositoryProvider)),
    );

    registerCommandHandler<CreateUserCommand, String>(
      CreateUserCommandHandler(userRepository: ref.read(userRepositoryProvider)),
    );

    registerCommandHandler<UpdateUserCommand, bool>(
      UpdateUserCommandHandler(userRepository: ref.read(userRepositoryProvider)),
    );

    registerCommandHandler<DeleteUserCommand, bool>(
      DeleteUserCommandHandler(userRepository: ref.read(userRepositoryProvider)),
    );

    registerCommandHandler<UserSignInCommand, bool>(
      UserSignInCommandHandler(userRepository: ref.read(userRepositoryProvider)),
    );

    registerCommandHandler<UserSignInVerifyCommand, bool>(
      UserSignInVerifyCommandHandler(userRepository: ref.read(userRepositoryProvider)),
    );

    //UserGroup
    registerQueryHandler<GetUserGroupsQuery, List<UserGroup>>(
      GetUserGroupsQueryHandler(userGroupRepository: ref.read(userGroupRepositoryProvider)),
    );

    registerCommandHandler<CreateUserGroupCommand, UserGroupDto>(
      CreateUserGroupCommandHandler(userGroupRepository: ref.read(userGroupRepositoryProvider)),
    );
    
    registerCommandHandler<UpdateUserGroupCommand, bool>(
      UpdateUserGroupCommandHandler(userGroupRepository: ref.read(userGroupRepositoryProvider)),
    );
    
    registerCommandHandler<DeleteUserGroupCommand, bool>(
      DeleteUserGroupCommandHandler(userGroupRepository: ref.read(userGroupRepositoryProvider)),
    );

    registerCommandHandler<AddUsersToUserGroupCommand, bool>(
      AddUsersToUserGroupCommandHandler(userGroupRepository: ref.read(userGroupRepositoryProvider)),
    );

    registerCommandHandler<RemoveUserFromUserGroupCommand, bool>(
      RemoveUserFromUserGroupCommandHandler(userGroupRepository: ref.read(userGroupRepositoryProvider)),
    );

    //Department
    registerQueryHandler<GetDepartmentsQuery, List<Department>>(
      GetDepartmentsQueryHandler(departmentRepository: ref.read(departmentRepositoryProvider))
    );

    registerCommandHandler<CreateDepartmentCommand, String>(
      CreateDepartmentCommandHandler(departmentRepository: ref.read(departmentRepositoryProvider)),
    );

    registerCommandHandler<UpdateDepartmentCommand, bool>(
      UpdateDepartmentCommandHandler(departmentRepository: ref.read(departmentRepositoryProvider)),
    );

    registerCommandHandler<DeleteDepartmentCommand, bool?>(
      DeleteDepartmentCommandHandler(departmentRepository: ref.read(departmentRepositoryProvider)),
    );

    //Project
    registerQueryHandler<GetProjectsQuery, List<Project?>>(
        GetProjectsQueryHandler(projectRepository: ref.read(projectRepositoryProvider))
    );

    registerCommandHandler<CreateProjectCommand, String>(
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

    //TickStatus
    registerQueryHandler<GetTicketStatusQuery, List<TicketStatusDto>>(
      GetTicketStatusQueryHandler(ticketStatusRepository: ref.read(ticketStatusRepositoryProvider)),
    );
    
    registerCommandHandler<CreateTicketStatusCommand, TicketStatusDto>(
      CreateTicketStatusCommandHandler(ticketStatusRepository: ref.read(ticketStatusRepositoryProvider)),
    );

    registerCommandHandler<UpdateTicketStatusCommand, bool>(
      UpdateTicketStatusCommandHandler(ticketStatusRepository: ref.read(ticketStatusRepositoryProvider)),
    );

    registerCommandHandler<DeleteTicketStatusCommand, bool>(
        DeleteTicketStatusCommandHandler(ticketStatusRepository: ref.read(ticketStatusRepositoryProvider)),
    );

    //Comment
    registerQueryHandler<GetCommentsQuery, List<CommentDto>>(
      GetCommentsQueryHandler(commentRepository: ref.read(commentRepositoryProvider)),
    );

    registerCommandHandler<CreateCommentCommand, CommentDto>(
      CreateCommentCommandHandler(commentRepository: ref.read(commentRepositoryProvider)),
    );

    registerCommandHandler<UpdateCommentCommand, bool>(
      UpdateCommentCommandHandler(commentRepository: ref.read(commentRepositoryProvider)),
    );

    registerCommandHandler<DeleteCommentCommand, bool>(
      DeleteCommentCommandHandler(commentRepository: ref.read(commentRepositoryProvider)),
    );

    //Document
    registerQueryHandler<GetDocumentsQuery, List<DocumentDto>>(
      GetDocumentsQueryHandler(documentRepository: ref.read(documentRepositoryProvider)),
    );

    registerQueryHandler<DownloadDocumentQuery, String>(
      DownloadDocumentQueryHandler(documentRepository: ref.read(documentRepositoryProvider)),
    );

    registerQueryHandler<UploadDocumentQuery, String>(
      UploadDocumentQueryHandler(documentRepository: ref.read(documentRepositoryProvider)),
    );

    registerCommandHandler<CreateDocumentCommand, DocumentDto>(
      CreateDocumentCommandHandler(documentRepository: ref.read(documentRepositoryProvider)),
    );

    registerCommandHandler<UpdateDocumentCommand, bool>(
      UpdateDocumentCommandHandler(documentRepository: ref.read(documentRepositoryProvider)),
    );

    registerCommandHandler<DeleteDocumentCommand, bool>(
      DeleteDocumentCommandHandler(documentRepository: ref.read(documentRepositoryProvider)),
    );
  }
}
