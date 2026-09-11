import 'package:enterprise_management/application/use_cases/comments/create_comment/create_comment_command.dart';
import 'package:enterprise_management/infrastructure/data/dtos/comments/comment_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/comment_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class CreateCommentCommandHandler extends ICommandHandler<CreateCommentCommand, CommentDto> {
  const CreateCommentCommandHandler({required this._commentRepository});
  final ICommentRepository _commentRepository;

  @override
  Future<Result<CommentDto>> handle(CreateCommentCommand command) async {
    final res = await _commentRepository.createComment(ticketId: command.ticketId, userId: command.userId, content: command.content);
    return Result.success(res);
  }

}