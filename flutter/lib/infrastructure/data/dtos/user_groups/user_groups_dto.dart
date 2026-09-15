import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_groups_dto.freezed.dart';
part 'user_groups_dto.g.dart';
@freezed
abstract class UserGroupDto with _$UserGroupDto {
  const factory UserGroupDto({required String id, required String name, required List<UserDto> users}) = _UserGroupDto;

  factory UserGroupDto.fromJson(Map<String, dynamic> json) => _$UserGroupDtoFromJson(json);
}

extension UserGroupsDtoX on UserGroupDto {
  UserGroup toAggregate() {
    return UserGroup(id: id, name: name);
  }
}