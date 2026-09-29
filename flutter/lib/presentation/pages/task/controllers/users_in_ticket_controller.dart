import 'package:enterprise_management/application/use_cases/tickets/get_ticket/get_ticket_query.dart';
import 'package:enterprise_management/application/use_cases/tickets/set_users_in_ticket/set_users_in_ticket_command.dart';
import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared_kernel/result/result.dart';

part 'users_in_ticket_controller.g.dart';

@Riverpod()
class UsersInTicketController extends _$UsersInTicketController {
  @override
  Future<Ticket?> build() async {
    return null;
  }

  Future<void> getUsersByTicketId({required String ticketId}) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetTicketQuery(id: ticketId));
    res.when(
      success: (project) {
        state = AsyncData(project);
      },
      failure: (error) {
        state = AsyncError(error, StackTrace.current);
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
