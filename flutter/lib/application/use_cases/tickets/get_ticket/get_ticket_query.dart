import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ticket_query.freezed.dart';
@freezed
abstract class GetTicketQuery with _$GetTicketQuery implements IQuery<Ticket> {
  const factory GetTicketQuery({required String id}) = _GetTicketQuery;
}