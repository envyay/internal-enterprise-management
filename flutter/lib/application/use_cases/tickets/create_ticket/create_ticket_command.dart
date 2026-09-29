import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ticket_command.freezed.dart';
@freezed
abstract class CreateTicketCommand with _$CreateTicketCommand implements ICommand<String> {
  const factory CreateTicketCommand({required String title, required String description, required String ticketStatusId, required List<String> userIds}) = _CreateTicketCommand;
}