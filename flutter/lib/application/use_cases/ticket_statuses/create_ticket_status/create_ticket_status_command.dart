import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/ticket_statuses/ticket_status_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ticket_status_command.freezed.dart';
@freezed
abstract class CreateTicketStatusCommand with _$CreateTicketStatusCommand implements ICommand<TicketStatusDto> {
  const factory CreateTicketStatusCommand({required String name, required ProjectDto projectId}) = _CreateTicketStatusCommand;
}