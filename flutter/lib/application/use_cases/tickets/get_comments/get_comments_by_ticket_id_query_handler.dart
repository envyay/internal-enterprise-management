import 'package:enterprise_management/application/use_cases/tickets/get_comments/get_comments_by_ticket_id_query.dart';
import 'package:enterprise_management/domain/aggregates/comment/comment.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetCommentsByTicketIdQueryHandler extends IQueryHandler<GetCommentsByTicketIdQuery, List<Comment>> {
  const GetCommentsByTicketIdQueryHandler({required this._ticketRepository});
  final ITicketRepository _ticketRepository;

  @override
  Future<Result<List<Comment>>> handle(GetCommentsByTicketIdQuery query) async {
    final res = await _ticketRepository.getCommentsByTicketId(ticketId: query.ticketId);
    return Result.success(res);
  }
}