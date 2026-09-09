import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_group_dto.freezed.dart';
part 'update_user_group_dto.g.dart';
@freezed
abstract class UpdateUserGroupDto with _$UpdateUserGroupDto {
  const factory UpdateUserGroupDto({required String id, required String name, required List<UserDto> userIds}) = _UpdateUserGroupDto;

  factory UpdateUserGroupDto.fromJson(Map<String, dynamic> json) => _$UpdateUserGroupDtoFromJson(json);
}