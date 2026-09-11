import 'package:enterprise_management/infrastructure/data/dtos/comments/comment_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_comment_command.freezed.dart';
@freezed
abstract class CreateCommentCommand with _$CreateCommentCommand implements ICommand<CommentDto> {
  const factory CreateCommentCommand({required String content, required TicketDto ticketId, required UserDto userId}) = _CreateCommentCommand;
}