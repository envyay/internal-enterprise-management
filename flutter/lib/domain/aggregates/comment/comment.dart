import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'comment.mapper.dart';
@MappableClass()
class Comment extends AggregateRoot<String> with CommentMappable {
  Comment({required super.id, required this.content, required this.userId, required this.ticketId});

  final String content;
  final String userId;
  final String ticketId;
}