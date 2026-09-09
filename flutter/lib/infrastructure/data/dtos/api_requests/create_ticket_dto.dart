import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ticket_dto.freezed.dart';
part 'create_ticket_dto.g.dart';
@freezed
abstract class CreateTicketDto with _$CreateTicketDto {
  const factory CreateTicketDto({required String title, required String description}) = _CreateTicketDto;

  factory CreateTicketDto.fromJson(Map<String, dynamic> json) => _$CreateTicketDtoFromJson(json);
}