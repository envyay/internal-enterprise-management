import 'package:enterprise_management/infrastructure/data/dtos/ticket_statuses/ticket_status_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ticket_status_query.freezed.dart';
@freezed
abstract class GetTicketStatusQuery with _$GetTicketStatusQuery implements IQuery<List<TicketStatusDto>> {
  const factory GetTicketStatusQuery() = _GetTicketStatusQuery;
}