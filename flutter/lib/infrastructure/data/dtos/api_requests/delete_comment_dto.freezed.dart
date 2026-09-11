// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteCommentDto {

 String get id;
/// Create a copy of DeleteCommentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteCommentDtoCopyWith<DeleteCommentDto> get copyWith => _$DeleteCommentDtoCopyWithImpl<DeleteCommentDto>(this as DeleteCommentDto, _$identity);

  /// Serializes this DeleteCommentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteCommentDto&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteCommentDto(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteCommentDtoCopyWith<$Res>  {
  factory $DeleteCommentDtoCopyWith(DeleteCommentDto value, $Res Function(DeleteCommentDto) _then) = _$DeleteCommentDtoCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteCommentDtoCopyWithImpl<$Res>
    implements $DeleteCommentDtoCopyWith<$Res> {
  _$DeleteCommentDtoCopyWithImpl(this._self, this._then);

  final DeleteCommentDto _self;
  final $Res Function(DeleteCommentDto) _then;

/// Create a copy of DeleteCommentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(DeleteCommentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteCommentDto].
extension DeleteCommentDtoPatterns on DeleteCommentDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteCommentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteCommentDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteCommentDto value)  $default,){
final _that = this;
switch (_that) {
case _DeleteCommentDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteCommentDto value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteCommentDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteCommentDto() when $default != null:
return $default(_that.id);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id)  $default,) {final _that = this;
switch (_that) {
case _DeleteCommentDto():
return $default(_that.id);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id)?  $default,) {final _that = this;
switch (_that) {
case _DeleteCommentDto() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteCommentDto implements DeleteCommentDto {
  const _DeleteCommentDto({required this.id});
  factory _DeleteCommentDto.fromJson(Map<String, dynamic> json) => _$DeleteCommentDtoFromJson(json);

@override final  String id;

/// Create a copy of DeleteCommentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCommentDtoCopyWith<_DeleteCommentDto> get copyWith => __$DeleteCommentDtoCopyWithImpl<_DeleteCommentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteCommentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteCommentDto&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteCommentDto(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteCommentDtoCopyWith<$Res> implements $DeleteCommentDtoCopyWith<$Res> {
  factory _$DeleteCommentDtoCopyWith(_DeleteCommentDto value, $Res Function(_DeleteCommentDto) _then) = __$DeleteCommentDtoCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteCommentDtoCopyWithImpl<$Res>
    implements _$DeleteCommentDtoCopyWith<$Res> {
  __$DeleteCommentDtoCopyWithImpl(this._self, this._then);

  final _DeleteCommentDto _self;
  final $Res Function(_DeleteCommentDto) _then;

/// Create a copy of DeleteCommentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteCommentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
