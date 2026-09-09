import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_ticket_command.freezed.dart';
@freezed
abstract class DeleteTicketCommand with _$DeleteTicketCommand implements ICommand<bool> {
  const factory DeleteTicketCommand({required String id}) = _DeleteTicketCommand;
}