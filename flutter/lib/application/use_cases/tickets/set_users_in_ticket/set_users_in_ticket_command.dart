import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_users_in_ticket_command.freezed.dart';
@freezed
abstract class SetUsersInTicketCommand with _$SetUsersInTicketCommand implements ICommand<bool> {
  const factory SetUsersInTicketCommand({required String id, required List<String> userIds}) = _SetUsersInTicketCommand;
}