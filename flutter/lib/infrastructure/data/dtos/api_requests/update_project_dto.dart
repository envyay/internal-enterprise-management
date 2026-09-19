import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_project_dto.freezed.dart';
part 'update_project_dto.g.dart';
@freezed
abstract class UpdateProjectDto with _$UpdateProjectDto {
  const factory UpdateProjectDto({required String id, required String name, required String description, required String code}) = _UpdateProjectDto;

  factory UpdateProjectDto.fromJson(Map<String, dynamic> json) => _$UpdateProjectDtoFromJson(json);
}