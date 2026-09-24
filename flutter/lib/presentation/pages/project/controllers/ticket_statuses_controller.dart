import 'package:enterprise_management/application/use_cases/ticket_statuses/get_ticket_statuses/get_ticket_status_query.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ticket_statuses_controller.g.dart';

@Riverpod()
class TicketStatusesController extends _$TicketStatusesController {
  @override
  Future<List<TicketStatus>> build() {
    return getTicketStatuses();
  }

  Future<List<TicketStatus>> getTicketStatuses() async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetTicketStatusesQuery());
    return res.when(
      success: (List<TicketStatus> data) {
        state = AsyncData(data);
        return data;
      },
      failure: (AppFailure failure) {
        state = AsyncError(failure, StackTrace.current);
        return [];
      },
    );
  }
}
