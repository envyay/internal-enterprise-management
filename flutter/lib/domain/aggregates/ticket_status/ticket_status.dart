import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'ticket_status.mapper.dart';
@MappableClass()
class TicketStatus extends AggregateRoot<String> with TicketStatusMappable {
  TicketStatus({required super.id, required this.projectId, required this.name, required this.tickets});

  final String projectId;
  final String name;
  final List<Ticket>? tickets;
}
