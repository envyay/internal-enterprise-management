import 'package:enterprise_management/application/use_cases/comments/delete_comment/delete_comment_command.dart';
import 'package:enterprise_management/application/use_cases/tickets/get_comments/get_comments_by_ticket_id_query.dart';
import 'package:enterprise_management/domain/aggregates/comment/comment.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comments_in_ticket_controller.g.dart';
@Riverpod()
class CommentsInTicketController extends _$CommentsInTicketController {
  @override
  Future<List<Comment>> build(String ticketId) {
    return getCommentsByTicketId(ticketId: ticketId);
  }

  Future<List<Comment>> getCommentsByTicketId({required String ticketId}) async{
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetCommentsByTicketIdQuery(ticketId: ticketId));
    return res.when(success: (List<Comment> data) {
      state = AsyncData(data);
      return data;
    }, failure: (AppFailure failure) {
      state = AsyncError(failure, StackTrace.current);
      return [];
    });
  }

  Future<void> refresh(String ticketId) async {
    final data = await getCommentsByTicketId(ticketId: ticketId);
    state = AsyncData(data);
  }

  Future<void> delete(String id) async {
    final mediator = ref.read(mediatorProvider);
    await mediator.send(DeleteCommentCommand(id: id));
  }
}