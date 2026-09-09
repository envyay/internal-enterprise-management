import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_tickets_query.freezed.dart';
@freezed
abstract class GetTicketsQuery with _$GetTicketsQuery implements IQuery<List<TicketDto?>> {
  const factory GetTicketsQuery() = _GetTicketsQuery;
}