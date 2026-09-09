import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_users_to_user_group_dto.freezed.dart';
part 'add_users_to_user_group_dto.g.dart';
@freezed
abstract class AddUsersToUserGroupDto with _$AddUsersToUserGroupDto {
  const factory AddUsersToUserGroupDto({required String id, required List<UserDto> userIds}) = _AddUsersToUserGroupDto;

  factory AddUsersToUserGroupDto.fromJson(Map<String, dynamic> json) => _$AddUsersToUserGroupDtoFromJson(json);
}