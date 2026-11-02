import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/infrastructure/data/dtos/user_group_policies/user_group_policy_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_groups_dto.freezed.dart';
part 'user_groups_dto.g.dart';

@freezed
abstract class UserGroupDto with _$UserGroupDto {
  const factory UserGroupDto({
    required String id,
    required String name,
    required List<UserDto>? users,
    required List<UserGroupPolicyDto>? userGroupPolicies,
  }) = _UserGroupDto;

  factory UserGroupDto.fromJson(Map<String, dynamic> json) =>
      _$UserGroupDtoFromJson(json);
}

extension UserGroupsDtoX on UserGroupDto {
  UserGroup toAggregate() {
    return UserGroup(
      id: id,
      name: name,
      users: users?.map((item) => item.toAggregate()).toList() ?? [],
        userGroupPolicies: userGroupPolicies?.map((item) => item.toAggregate()).toList() ?? []
    );
  }
}
