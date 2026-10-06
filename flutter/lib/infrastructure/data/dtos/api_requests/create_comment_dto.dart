import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_comment_dto.freezed.dart';
part 'create_comment_dto.g.dart';
@freezed
abstract class CreateCommentDto with _$CreateCommentDto {
  const factory CreateCommentDto({required String content, required String ticketId}) = _CreateCommentDto;

  factory CreateCommentDto.fromJson(Map<String, dynamic> json) => _$CreateCommentDtoFromJson(json);
}