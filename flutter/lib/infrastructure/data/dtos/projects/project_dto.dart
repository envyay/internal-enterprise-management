import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_dto.freezed.dart';
part 'project_dto.g.dart';

@freezed
abstract class ProjectDto with _$ProjectDto {
  const factory ProjectDto({required String id, required String name, required String description, required String code}) = _ProjectDto;

  factory ProjectDto.fromJson(Map<String, dynamic> json) => _$ProjectDtoFromJson(json);
}

extension ProjectDtoX on ProjectDto {
  Project toAggregate() {
    return Project(id: id, name: name, description: description, code: code);
  }
}