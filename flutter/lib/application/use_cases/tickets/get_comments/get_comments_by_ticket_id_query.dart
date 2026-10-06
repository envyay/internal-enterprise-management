import 'package:enterprise_management/domain/aggregates/comment/comment.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_comments_by_ticket_id_query.freezed.dart';
@freezed
abstract class GetCommentsByTicketIdQuery with _$GetCommentsByTicketIdQuery implements IQuery<List<Comment>> {
  const factory GetCommentsByTicketIdQuery({required String ticketId}) = _GetCommentsByTicketIdQuery;
}