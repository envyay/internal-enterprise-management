import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_user_group_dto.freezed.dart';
part 'delete_user_group_dto.g.dart';
@freezed
abstract class DeleteUserGroupDto with _$DeleteUserGroupDto {
  const factory DeleteUserGroupDto({required String id}) = _DeleteUserGroupDto;

  factory DeleteUserGroupDto.fromJson(Map<String, dynamic> json) => _$DeleteUserGroupDtoFromJson(json);
}