import 'package:enterprise_management/application/use_cases/comments/update_comment/update_comment_command.dart';
import 'package:enterprise_management/infrastructure/repositories/comment_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class UpdateCommentCommandHandler extends ICommandHandler<UpdateCommentCommand, bool> {
  const UpdateCommentCommandHandler({required this._commentRepository});
  final ICommentRepository _commentRepository;

  @override
  Future<Result<bool>> handle(UpdateCommentCommand command) async {
    final res = await _commentRepository.updateComment(id: command.id, content: command.content);
    return Result.success(res);
  }

}