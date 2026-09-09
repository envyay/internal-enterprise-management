import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_user_from_user_group_dto.freezed.dart';
part 'remove_user_from_user_group_dto.g.dart';
@freezed
abstract class RemoveUserFromUserGroupDto with _$RemoveUserFromUserGroupDto {
  const factory RemoveUserFromUserGroupDto({required String id, required UserDto userId}) = _RemoveUserFromUserGroupDto;

  factory RemoveUserFromUserGroupDto.fromJson(Map<String, dynamic> json) => _$RemoveUserFromUserGroupDtoFromJson(json);
}