import 'package:enterprise_management/application/use_cases/ticket_statuses/get_ticket_status/get_ticket_status_query.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_ticket_status_controller.g.dart';
@Riverpod()
class GetTicketStatusController extends _$GetTicketStatusController {

  @override
  Future<TicketStatus?> build() async {
    return null;
  }

  Future<TicketStatus?> getTicketStatus({required String id}) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetTicketStatusQuery(id: id));
    return res.when(success: (TicketStatus? data) {
      state = AsyncData(data);
      return data;
    }, failure: (AppFailure failure){
      state = AsyncError(failure, StackTrace.current);
      return null;
    });

  }
}