import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_policies_in_user_group_dto.freezed.dart';
part 'set_policies_in_user_group_dto.g.dart';

@freezed
abstract class SetPoliciesInUserGroupDto with _$SetPoliciesInUserGroupDto{
  const factory SetPoliciesInUserGroupDto({required String id, required List<String> policyIds}) = _SetPoliciesInUserGroupDto;

  factory SetPoliciesInUserGroupDto.fromJson(Map<String, dynamic> json) => _$SetPoliciesInUserGroupDtoFromJson(json);
}