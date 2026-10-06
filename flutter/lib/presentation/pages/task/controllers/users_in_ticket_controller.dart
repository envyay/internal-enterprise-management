import 'package:enterprise_management/application/use_cases/tickets/get_ticket/get_ticket_query.dart';
import 'package:enterprise_management/application/use_cases/tickets/get_users/get_users_by_ticket_id_query.dart';
import 'package:enterprise_management/application/use_cases/tickets/set_users_in_ticket/set_users_in_ticket_command.dart';
import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared_kernel/result/result.dart';

part 'users_in_ticket_controller.g.dart';

@Riverpod()
class UsersInTicketController extends _$UsersInTicketController {
  @override
  Future<List<User>> build(String ticketId) async {
    return getUsersByTicketId(ticketId: ticketId);
  }

  Future<List<User>> getUsersByTicketId({required String ticketId}) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetUsersByTicketIdQuery(ticketId: ticketId));
    return res.when(
      success: (users) {
        state = AsyncData(users);
        return users;
      },
      failure: (error) {
        state = AsyncError(error, StackTrace.current);
        return [];
      },
    );
  }

  Future<void> setUsersInTicket({
    required String ticketId,
    required List<String> userIds,
  }) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.send(
      SetUsersInTicketCommand(id: ticketId, userIds: userIds),
    );
    res.when(success: (success) {
      if (success) {
        getUsersByTicketId(ticketId: ticketId);
      }
    }, failure: (error) {
      state = AsyncError(error, StackTrace.current);
    });
  }
}
