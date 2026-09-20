import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_users_in_department.freezed.dart';
part 'set_users_in_department.g.dart';
@freezed
abstract class SetUsersInDepartmentDto with _$SetUsersInDepartmentDto {
  const factory SetUsersInDepartmentDto({required String id, required List<String> userIds}) = _SetUsersInDepartmentDto;

  factory SetUsersInDepartmentDto.fromJson(Map<String, dynamic> json) => _$SetUsersInDepartmentDtoFromJson(json);
}