import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_department_dto.freezed.dart';
part 'create_department_dto.g.dart';
@freezed
abstract class CreateDepartmentDto with _$CreateDepartmentDto{
  const factory CreateDepartmentDto({required String name}) = _CreateDepartmentDto;

  factory CreateDepartmentDto.fromJson(Map<String, dynamic> json) => _$CreateDepartmentDtoFromJson(json);
}