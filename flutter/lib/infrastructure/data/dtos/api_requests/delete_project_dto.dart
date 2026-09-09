import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_project_dto.freezed.dart';
part 'delete_project_dto.g.dart';
@freezed
abstract class DeleteProjectDto with _$DeleteProjectDto {
  const factory DeleteProjectDto({required String id}) = _DeleteProjectDto;

  factory DeleteProjectDto.fromJson(Map<String, dynamic> json) => _$DeleteProjectDtoFromJson(json);
}