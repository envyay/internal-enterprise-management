import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_status_dto.freezed.dart';
part 'ticket_status_dto.g.dart';
@freezed
abstract class TicketStatusDto with _$TicketStatusDto {
  const factory TicketStatusDto({
    required String id,
    required String name,
    required ProjectDto projectId,
    required List<TicketDto> ticketIds,
  }) = _TicketStatusDto;

  factory TicketStatusDto.fromJson(Map<String, dynamic> json) => _$TicketStatusDtoFromJson(json);
}
