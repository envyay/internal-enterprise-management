// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'comment.dart';

class CommentMapper extends ClassMapperBase<Comment> {
  CommentMapper._();

  static CommentMapper? _instance;
  static CommentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CommentMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Comment';

  static String _$id(Comment v) => v.id;
  static const Field<Comment, String> _f$id = Field('id', _$id);
  static String _$content(Comment v) => v.content;
  static const Field<Comment, String> _f$content = Field('content', _$content);
  static String _$userId(Comment v) => v.userId;
  static const Field<Comment, String> _f$userId = Field('userId', _$userId);
  static String _$ticketId(Comment v) => v.ticketId;
  static const Field<Comment, String> _f$ticketId = Field(
    'ticketId',
    _$ticketId,
  );

  @override
  final MappableFields<Comment> fields = const {
    #id: _f$id,
    #content: _f$content,
    #userId: _f$userId,
    #ticketId: _f$ticketId,
  };

  static Comment _instantiate(DecodingData data) {
    return Comment(
      id: data.dec(_f$id),
      content: data.dec(_f$content),
      userId: data.dec(_f$userId),
      ticketId: data.dec(_f$ticketId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Comment fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Comment>(map);
  }

  static Comment fromJson(String json) {
    return ensureInitialized().decodeJson<Comment>(json);
  }
}

mixin CommentMappable {
  String toJson() {
    return CommentMapper.ensureInitialized().encodeJson<Comment>(
      this as Comment,
    );
  }

  Map<String, dynamic> toMap() {
    return CommentMapper.ensureInitialized().encodeMap<Comment>(
      this as Comment,
    );
  }

  CommentCopyWith<Comment, Comment, Comment> get copyWith =>
      _CommentCopyWithImpl<Comment, Comment>(
        this as Comment,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CommentMapper.ensureInitialized().stringifyValue(this as Comment);
  }

  @override
  bool operator ==(Object other) {
    return CommentMapper.ensureInitialized().equalsValue(
      this as Comment,
      other,
    );
  }

  @override
  int get hashCode {
    return CommentMapper.ensureInitialized().hashValue(this as Comment);
  }
}

extension CommentValueCopy<$R, $Out> on ObjectCopyWith<$R, Comment, $Out> {
  CommentCopyWith<$R, Comment, $Out> get $asComment =>
      $base.as((v, t, t2) => _CommentCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CommentCopyWith<$R, $In extends Comment, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? content, String? userId, String? ticketId});
  CommentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CommentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Comment, $Out>
    implements CommentCopyWith<$R, Comment, $Out> {
  _CommentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Comment> $mapper =
      CommentMapper.ensureInitialized();
  @override
  $R call({String? id, String? content, String? userId, String? ticketId}) =>
      $apply(
        FieldCopyWithData({
          if (id != null) #id: id,
          if (content != null) #content: content,
          if (userId != null) #userId: userId,
          if (ticketId != null) #ticketId: ticketId,
        }),
      );
  @override
  Comment $make(CopyWithData data) => Comment(
    id: data.get(#id, or: $value.id),
    content: data.get(#content, or: $value.content),
    userId: data.get(#userId, or: $value.userId),
    ticketId: data.get(#ticketId, or: $value.ticketId),
  );

  @override
  CommentCopyWith<$R2, Comment, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CommentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

