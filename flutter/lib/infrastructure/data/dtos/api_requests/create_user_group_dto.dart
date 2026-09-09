import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_group_dto.freezed.dart';
part 'create_user_group_dto.g.dart';
@freezed
abstract class CreateUserGroupDto with _$CreateUserGroupDto {
  const factory CreateUserGroupDto({required String name, required List<UserDto> userIds}) = _CreateUserGroupDto;

  factory CreateUserGroupDto.fromJson(Map<String, dynamic> json) => _$CreateUserGroupDtoFromJson(json);
}