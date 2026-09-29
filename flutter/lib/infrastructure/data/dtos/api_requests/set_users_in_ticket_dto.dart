import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_users_in_ticket_dto.freezed.dart';
part 'set_users_in_ticket_dto.g.dart';
@freezed
abstract class SetUsersInTicketDto with _$SetUsersInTicketDto {
  const factory SetUsersInTicketDto({required String id, required List<String> userIds}) = _SetUsersInTicketDto;

  factory SetUsersInTicketDto.fromJson(Map<String, double> json) => _$SetUsersInTicketDtoFromJson(json);
}