import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_dto.freezed.dart';
part 'update_user_dto.g.dart';
@freezed
abstract class UpdateUserDto with _$UpdateUserDto {
  const factory UpdateUserDto({required String id, required String fullName, required String email}) = _UpdateUserDto;

  factory UpdateUserDto.fromJson(Map<String, dynamic> json) => _$UpdateUserDtoFromJson(json);
}