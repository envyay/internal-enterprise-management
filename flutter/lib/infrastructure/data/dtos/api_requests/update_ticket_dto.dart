import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_ticket_dto.freezed.dart';
part 'update_ticket_dto.g.dart';
@freezed
abstract class UpdateTicketDto with _$UpdateTicketDto  {
  const factory UpdateTicketDto({required String id, required String title, required String description}) = _UpdateTicketDto;

  factory UpdateTicketDto.fromJson(Map<String, dynamic> json) => _$UpdateTicketDtoFromJson(json);
}