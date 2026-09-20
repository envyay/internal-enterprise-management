import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const factory UserDto({String? id, String? fullName, String? email, int? status}) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}

extension DUserDtoX on UserDto {
  User toAggregate() {
    return User(id: id ?? '', fullName: fullName ?? '', email: email ?? '', status: status ?? 1);
  }
}
