import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_ticket_status_dto.freezed.dart';
part 'update_ticket_status_dto.g.dart';

@freezed
abstract class UpdateTicketStatusDto with _$UpdateTicketStatusDto {
  const factory UpdateTicketStatusDto({required String id, required String name}) = _UpdateTicketStatusDto;

  factory UpdateTicketStatusDto.fromJson(Map<String, dynamic> json) => _$UpdateTicketStatusDtoFromJson(json);
}