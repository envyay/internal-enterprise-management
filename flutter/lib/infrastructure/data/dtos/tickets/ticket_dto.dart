import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/infrastructure/data/dtos/comments/comment_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_dto.freezed.dart';
part 'ticket_dto.g.dart';

@freezed
abstract class TicketDto with _$TicketDto {
  const factory TicketDto({required String id,
    required String title,
    required String description,
    required String projectId,
    required String ticketStatusId,
    required List<UserDto> users,
    required List<CommentDto> comments}) =_TicketDto;

  factory TicketDto.fromJson(Map<String, dynamic> json) =>
      _$TicketDtoFromJson(json);
}

extension TicketDtoX on TicketDto {
  Ticket toAggregate() {
    return Ticket(
      id: id,
      title: title,
      description: description,
      projectId: projectId,
      ticketStatusId: ticketStatusId,
      users: users.map((item) => item.toAggregate()).toList(),
      comments: comments.map((item) => item.toAggregate()).toList());
  }
}