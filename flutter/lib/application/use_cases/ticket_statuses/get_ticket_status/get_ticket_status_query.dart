import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ticket_status_query.freezed.dart';
@freezed
abstract class GetTicketStatusQuery with _$GetTicketStatusQuery implements IQuery<TicketStatus?> {
  const factory GetTicketStatusQuery({required String id}) = _GetTicketStatusQuery;
}