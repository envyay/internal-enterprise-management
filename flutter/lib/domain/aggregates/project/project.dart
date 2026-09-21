import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'project.mapper.dart';

@MappableClass()
class Project extends AggregateRoot<String> with ProjectMappable {
  Project({
    required super.id,
    required this.name,
    required this.description,
    this.isActive = false,
    required this.code,
    required this.status,
    required this.startDate,
    required this.endDate,
    required this.users,
    required this.ticketStatuses,
  });

  final String name;
  final String description;
  final String code;
  final int status;
  final DateTime? startDate;
  final DateTime? endDate;
  final List<User> users;
  final List<TicketStatus> ticketStatuses;
  final bool isActive;
}
