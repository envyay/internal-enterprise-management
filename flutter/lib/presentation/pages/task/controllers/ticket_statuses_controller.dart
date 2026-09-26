import 'package:enterprise_management/application/use_cases/projects/get_ticket_statuses/get_ticket_statuses_by_project_id_query.dart';
import 'package:enterprise_management/application/use_cases/ticket_statuses/delete_ticket_status/delete_ticket_status_command.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ticket_statuses_controller.g.dart';

@Riverpod()
class TicketStatusesController extends _$TicketStatusesController {
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

  void refresh(String projectId) async {
    final data = await getTicketStatusesByProjectId(projectId: projectId);
    state = AsyncValue.data(data);
  }

  Future<void> delete(String id) async {
    final mediator = ref.read(mediatorProvider);
    await mediator.send(DeleteTicketStatusCommand(id: id));

    // refresh(id);
  }
}
