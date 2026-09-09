import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_department_dto.freezed.dart';
part 'delete_department_dto.g.dart';
@freezed
abstract class DeleteDepartmentDto with _$DeleteDepartmentDto {
  const factory DeleteDepartmentDto({required String id}) = _DeleteDepartmentDto;

  factory DeleteDepartmentDto.fromJson(Map<String, dynamic> json) => _$DeleteDepartmentDtoFromJson(json);
}