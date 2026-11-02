import 'package:enterprise_management/domain/aggregates/user_group_policy/user_group_policy.dart';
import 'package:enterprise_management/infrastructure/data/dtos/user_groups/user_groups_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_group_policy_dto.freezed.dart';
part 'user_group_policy_dto.g.dart';


@freezed
abstract class UserGroupPolicyDto with _$UserGroupPolicyDto {
  const factory UserGroupPolicyDto({required String id, required String policy, UserGroupDto? userGroup}) = _UserGroupPolicyDto;

  factory UserGroupPolicyDto.fromJson(Map<String, dynamic> json) => _$UserGroupPolicyDtoFromJson(json);
}

extension UserGroupPolicyDtoX on UserGroupPolicyDto {
  UserGroupPolicy toAggregate() {
    return UserGroupPolicy(id: id, policy: policy, userGroup: userGroup?.toAggregate());
  }
}