import 'package:enterprise_management/infrastructure/data/local/data_source/providers.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/comment_service/providers.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/department_service/providers.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/documentRemoteDataSource/providers.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/project_service/providers.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/ticket_service/providers.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/ticket_status_service/providers.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/user_group_service/providers.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/user_service/providers.dart';
import 'package:enterprise_management/infrastructure/repositories/comment_repository.dart';
import 'package:enterprise_management/infrastructure/repositories/department_repository.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/infrastructure/repositories/project_repository.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_repository.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_status_repository.dart';
import 'package:enterprise_management/infrastructure/repositories/user_group_repository.dart';
import 'package:enterprise_management/infrastructure/repositories/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
IUserRepository userRepository(Ref ref) {
  final userRemoteDataSource = ref.read(userRemoteProvider);
  final authLocalDataSource = ref.read(authLocalProvider);

  return UsersRepository(userRemoteDataSource: userRemoteDataSource, authLocalDataSource: authLocalDataSource);
}

@Riverpod(keepAlive: true)
IDepartmentRepository departmentRepository(Ref ref) {
  final departmentRemoteDataSource = ref.read(departmentRemoteProvider);

  return DepartmentRepository(departmentRemoteDataSource: departmentRemoteDataSource);
}

@Riverpod(keepAlive: true)
IProjectRepository projectRepository(Ref ref){
  final projectRemoteDataSource = ref.read(projectRemoteProvider);
  return ProjectRepository(projectRemoteDataSource: projectRemoteDataSource);
}

@Riverpod(keepAlive: true)
ITicketRepository ticketRepository(Ref ref){
  final ticketRemoteDataSource = ref.watch(ticketRemoteProvider);
  return TicketRepository(ticketRemoteDataSource: ticketRemoteDataSource);
}

@Riverpod(keepAlive: true)
IUserGroupRepository userGroupRepository(Ref ref){
  final userGroupRemoteDataSource = ref.watch(userGroupRemoteProvider);
  return UserGroupRepository(userGroupRemoteDataSource: userGroupRemoteDataSource);
}

@Riverpod(keepAlive: true)
ITicketStatusRepository ticketStatusRepository(Ref ref){
  final ticketStatusRemoteDataSource = ref.watch(ticketStatusRemoteProvider);
  return TicketStatusRepository(ticketStatusRemoteDataSource: ticketStatusRemoteDataSource);
}

@Riverpod(keepAlive: true)
ICommentRepository commentRepository(Ref ref){
  final commentRemoteDataSource = ref.watch(commentRemoteProvider);
  return CommentRepository(commentRemoteDataSource: commentRemoteDataSource);
}

@Riverpod(keepAlive: true)
IDocumentRepository documentRepository(Ref ref){
  final documentRemoteDataSource = ref.watch(documentRemoteProvider);
  return DocumentRepository(documentRemoteDataSource: documentRemoteDataSource);
}