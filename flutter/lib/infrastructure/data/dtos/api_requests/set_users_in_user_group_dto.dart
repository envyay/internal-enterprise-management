import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_users_in_user_group_dto.freezed.dart';
part 'set_users_in_user_group_dto.g.dart';

@freezed
abstract class SetUsersInUserGroupDto with _$SetUsersInUserGroupDto {
  const factory SetUsersInUserGroupDto({required String id, required List<String> userIds}) = _SetUsersInUserGroupDto;

  factory SetUsersInUserGroupDto.fromJson(Map<String, dynamic> json) => _$SetUsersInUserGroupDtoFromJson(json);
}