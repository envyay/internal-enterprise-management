import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/domain/aggregates/comment/comment.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'ticket.mapper.dart';
@MappableClass()
class Ticket extends AggregateRoot<String> with TicketMappable {
  Ticket({required super.id, required this.title, required this.description, required this.comments, required this.projectId, required this.ticketStatusId, required this.users});

  final String title;
  final String description;
  final List<Comment> comments;
  final String projectId;
  final String ticketStatusId;
  final List<User> users;
}