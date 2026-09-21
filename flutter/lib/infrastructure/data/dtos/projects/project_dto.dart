import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/infrastructure/data/dtos/ticket_statuses/ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_dto.freezed.dart';

part 'project_dto.g.dart';

@freezed
abstract class ProjectDto with _$ProjectDto {
  const factory ProjectDto({
    required String? id,
    required String? name,
    required String? description,
    required String? code,
    required int? status,
    required DateTime? startDate,
    required DateTime? endDate,
    required List<UserDto>? users,
    required List<TicketStatusDto>? ticketStatuses,
  }) = _ProjectDto;

  factory ProjectDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectDtoFromJson(json);
}

extension ProjectDtoX on ProjectDto {
  Project toAggregate() {
    return Project(
      id: id ?? '',
      name: name ?? '',
      description: description ?? '',
      code: code ?? '',
      status: status ?? 1,
      startDate: startDate,
      endDate: endDate,
      users: users?.map((item) => item.toAggregate()).toList() ?? [],
      ticketStatuses:
          ticketStatuses?.map((item) => item.toAggregate()).toList() ?? [],
    );
  }
}
