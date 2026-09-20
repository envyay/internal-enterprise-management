import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_user_from_department_dto.freezed.dart';
part 'remove_user_from_department_dto.g.dart';
@freezed
abstract class RemoveUserFromDepartmentDto with _$RemoveUserFromDepartmentDto {
  const factory RemoveUserFromDepartmentDto({required String id, required String userId}) = _RemoveUserFromDepartmentDto;

  factory RemoveUserFromDepartmentDto.fromJson(Map<String, dynamic> json) => _$RemoveUserFromDepartmentDtoFromJson(json);
}