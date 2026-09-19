import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_dto.freezed.dart';
part 'create_user_dto.g.dart';
@freezed
abstract class CreateUserDto with _$CreateUserDto {
  const factory CreateUserDto({required String fullName, required String email}) = _CreateUserDto;

  factory CreateUserDto.fromJson(Map<String, dynamic> json) => _$CreateUserDtoFromJson(json);
}