import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_comment_dto.freezed.dart';
part 'delete_comment_dto.g.dart';
@freezed
abstract class DeleteCommentDto with _$DeleteCommentDto {
  const factory DeleteCommentDto({required String id}) = _DeleteCommentDto;

  factory DeleteCommentDto.fromJson(Map<String, dynamic> json) => _$DeleteCommentDtoFromJson(json);
}