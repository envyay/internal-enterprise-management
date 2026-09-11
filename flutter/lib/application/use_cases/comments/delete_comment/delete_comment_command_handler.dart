import 'package:enterprise_management/application/use_cases/comments/delete_comment/delete_comment_command.dart';
import 'package:enterprise_management/infrastructure/repositories/comment_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class DeleteCommentCommandHandler extends ICommandHandler<DeleteCommentCommand, bool> {
  const DeleteCommentCommandHandler({required this._commentRepository});
  final ICommentRepository _commentRepository;

  @override
  Future<Result<bool>> handle(DeleteCommentCommand command) async {
    final res = await _commentRepository.deleteComment(id: command.id);
    return Result.success(res);
  }

}