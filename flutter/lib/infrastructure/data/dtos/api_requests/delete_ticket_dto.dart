import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_ticket_dto.freezed.dart';
part 'delete_ticket_dto.g.dart';
@freezed
abstract class DeleteTicketDto with _$DeleteTicketDto {
  const factory DeleteTicketDto({required String id}) = _DeleteTicketDto;

  factory DeleteTicketDto.fromJson(Map<String, dynamic> json) => _$DeleteTicketDtoFromJson(json);
}