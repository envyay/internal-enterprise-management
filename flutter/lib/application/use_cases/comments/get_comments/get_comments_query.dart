import 'package:enterprise_management/infrastructure/data/dtos/comments/comment_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_comments_command.freezed.dart';
@freezed
abstract class GetCommentsQuery with _$GetCommentsQuery implements IQuery<List<CommentDto>> {
  const factory GetCommentsQuery() = _GetCommentsQuery;
}