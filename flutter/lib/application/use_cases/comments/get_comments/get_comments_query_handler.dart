import 'package:enterprise_management/application/use_cases/comments/get_comments/get_comments_query.dart';
import 'package:enterprise_management/infrastructure/data/dtos/comments/comment_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/comment_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetCommentsQueryHandler extends IQueryHandler<GetCommentsQuery, List<CommentDto>> {
  const GetCommentsQueryHandler({required this._commentRepository});
  final ICommentRepository _commentRepository;
  @override
  Future<Result<List<CommentDto>>> handle(GetCommentsQuery query) async {
    final res = await _commentRepository.getComments();
    return Result.success(res);
  }

}