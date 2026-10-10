import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_ticket_by_ticket_status_dto.freezed.dart';
part 'update_ticket_by_ticket_status_dto.g.dart';
@freezed
abstract class UpdateTicketByTicketStatusDto with _$UpdateTicketByTicketStatusDto {
  const factory UpdateTicketByTicketStatusDto({required String id, required String ticketStatusId}) = _UpdateTicketByTicketStatusDto;

  factory UpdateTicketByTicketStatusDto.fromJson(Map<String, dynamic> json) => _$UpdateTicketByTicketStatusDtoFromJson(json);
}