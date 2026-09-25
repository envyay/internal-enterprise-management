import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ticket_status_dto.freezed.dart';
part 'create_ticket_status_dto.g.dart';

@freezed
abstract class CreateTicketStatusDto with _$CreateTicketStatusDto {
  const factory CreateTicketStatusDto({required String name, required String projectId}) = _CreateTicketStatusDto;

  factory CreateTicketStatusDto.fromJson(Map<String, dynamic> json) => _$CreateTicketStatusDtoFromJson(json);
}