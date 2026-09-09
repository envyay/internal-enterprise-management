import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ticket_status_dto.freezed.dart';
part 'create_ticket_status_dto.g.dart';
@freezed
abstract class CreateTicketStatusDto with _$CreateTicketStatusDto {
  const factory CreateTicketStatusDto({required String name, required ProjectDto projectId}) = _CreateTicketStatusDto;

  factory CreateTicketStatusDto.fromJson(Map<String, dynamic> json) => _$CreateTicketStatusDtoFromJson(json);
}