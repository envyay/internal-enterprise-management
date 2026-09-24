import 'package:enterprise_management/application/use_cases/projects/get_ticket_statuses/get_ticket_statuses_by_project_id_query.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ticket_statuses_in_project_controller.g.dart';

@Riverpod()
class TicketStatusesInProjectController extends _$TicketStatusesInProjectController {
  @override
  Future<List<TicketStatus>> build() async {
    return [];
  }

  Future<List<TicketStatus>> getTicketStatusesByProjectId({
    required String projectId,
  }) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(
      GetTicketStatusesByProjectIdQuery(projectId: projectId),
    );
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
