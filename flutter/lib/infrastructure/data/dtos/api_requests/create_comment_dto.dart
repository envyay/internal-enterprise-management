import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'create_comment_dto.freezed.dart';
part 'create_comment_dto.g.dart';
@freezed
abstract class CreateCommentDto with _$CreateCommentDto {
  const factory CreateCommentDto({required String content, required TicketDto ticketId, required UserDto userId}) = _CreateCommentDto;

  factory CreateCommentDto.fromJson(Map<String, dynamic> json) => _$CreateCommentDtoFromJson(json);
}