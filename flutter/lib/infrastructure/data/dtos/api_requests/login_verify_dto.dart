import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_verify_dto.freezed.dart';
part 'login_verify_dto.g.dart';
@freezed
abstract class LoginVerifyDto with _$LoginVerifyDto {
  const factory LoginVerifyDto({
    required String email,
    required String otp
}) = _LoginVerifyDto;
  factory LoginVerifyDto.fromJson(Map<String, dynamic> json) => _$LoginVerifyDtoFromJson(json);
}