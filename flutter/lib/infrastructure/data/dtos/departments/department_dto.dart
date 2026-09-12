import 'package:enterprise_management/domain/aggregates/department/department.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_dto.freezed.dart';
part 'department_dto.g.dart';

@freezed
abstract class DepartmentDto with _$DepartmentDto{
  const factory DepartmentDto({String? id, String? name}) = _DepartmentDto;

  factory DepartmentDto.fromJson(Map<String, dynamic> json) => _$DepartmentDtoFromJson(json);
}

extension DepartmentDtoX on DepartmentDto {
  Department toAggregate() {
    return Department(id: id ?? '', name: name ?? '');
  }
}