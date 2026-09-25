import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_users_in_project_dto.freezed.dart';
part 'set_users_in_project_dto.g.dart';
@freezed
abstract class SetUsersInProjectDto with _$SetUsersInProjectDto {
  const factory SetUsersInProjectDto({required String id, required List<String> userIds}) = _SetUsersInProjectDto;

  factory SetUsersInProjectDto.fromJson(Map<String, dynamic> json) => _$SetUsersInProjectDtoFromJson(json);
}