import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_tickets_query.freezed.dart';
@freezed
abstract class GetTicketsQuery with _$GetTicketsQuery implements IQuery<List<Ticket>> {
  const factory GetTicketsQuery() = _GetTicketsQuery;
}