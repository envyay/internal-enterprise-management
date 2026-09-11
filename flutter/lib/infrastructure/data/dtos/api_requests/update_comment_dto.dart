import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_comment_dto.freezed.dart';
part 'update_comment_dto.g.dart';
@freezed
abstract class UpdateCommentDto with _$UpdateCommentDto {
  const factory UpdateCommentDto({required String id, required String content}) = _UpdateCommentDto;

  factory UpdateCommentDto.fromJson(Map<String, dynamic> json) => _$UpdateCommentDtoFromJson(json);
}