import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_ticket_status_command.freezed.dart';
@freezed
abstract class DeleteTicketStatusCommand with _$DeleteTicketStatusCommand implements ICommand<bool> {
  const factory DeleteTicketStatusCommand({required String id}) = _DeleteTicketStatusCommand;
}