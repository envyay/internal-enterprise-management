import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ticket_status_command.freezed.dart';
@freezed
abstract class CreateTicketStatusCommand with _$CreateTicketStatusCommand implements ICommand<TicketStatus> {
  const factory CreateTicketStatusCommand({required String name, required String projectId}) = _CreateTicketStatusCommand;
}