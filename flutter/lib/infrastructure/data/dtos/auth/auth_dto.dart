import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';

part 'auth_dto.g.dart';

@unfreezed
abstract class AuthDto with _$AuthDto {
  factory AuthDto({String? userId, String? accessToken}) = _AuthDto;

  factory AuthDto.fromJson(Map<String, dynamic> json) =>
      _$AuthDtoFromJson(json);
}
