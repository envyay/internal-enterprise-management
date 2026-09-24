import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ticket_statuses_by_project_id_query.freezed.dart';
@freezed
abstract class GetTicketStatusesByProjectIdQuery with _$GetTicketStatusesByProjectIdQuery implements IQuery<List<TicketStatus>> {
  const factory GetTicketStatusesByProjectIdQuery({required String projectId}) = _GetTicketStatusesByProjectIdQuery;
}