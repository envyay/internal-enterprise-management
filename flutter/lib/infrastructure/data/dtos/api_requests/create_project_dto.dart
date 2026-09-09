import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_project_dto.freezed.dart';
part 'create_project_dto.g.dart';
@freezed
abstract class CreateProjectDto with _$CreateProjectDto {
  const factory CreateProjectDto({required String name}) = _CreateProjectDto;

  factory CreateProjectDto.fromJson(Map<String, dynamic> json) => _$CreateProjectDtoFromJson(json);
}