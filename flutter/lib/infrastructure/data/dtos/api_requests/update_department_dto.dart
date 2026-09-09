import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_department_dto.freezed.dart';
part 'update_department_dto.g.dart';
@freezed
abstract class UpdateDepartmentDto with _$UpdateDepartmentDto {
  const factory UpdateDepartmentDto({required String id, required String name}) = _UpdateDepartmentDto;

  factory UpdateDepartmentDto.fromJson(Map<String, dynamic> json) => _$UpdateDepartmentDtoFromJson(json);
}