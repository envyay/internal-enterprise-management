import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_ticket_status_dto.freezed.dart';
part 'delete_ticket_status_dto.g.dart';
@freezed
abstract class DeleteTicketStatusDto with _$DeleteTicketStatusDto {
  const factory DeleteTicketStatusDto({required String id}) = _DeleteTicketStatusDto;

  factory DeleteTicketStatusDto.fromJson(Map<String, dynamic> json) => _$DeleteTicketStatusDtoFromJson(json);
}