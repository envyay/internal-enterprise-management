import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_dto.freezed.dart';
part 'comment_dto.g.dart';
@freezed
abstract class CommentDto with _$CommentDto {
  const factory CommentDto({required String id, required TicketDto ticketId, required UserDto userId, required String content}) = _CommentDto;

  factory CommentDto.fromJson(Map<String, dynamic> json) => _$CommentDtoFromJson(json);
}