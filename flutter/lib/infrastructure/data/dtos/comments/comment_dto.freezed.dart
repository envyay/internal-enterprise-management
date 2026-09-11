// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommentDto {

 String get id; TicketDto get ticketId; UserDto get userId; String get content;
/// Create a copy of CommentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentDtoCopyWith<CommentDto> get copyWith => _$CommentDtoCopyWithImpl<CommentDto>(this as CommentDto, _$identity);

  /// Serializes this CommentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketId,userId,content);

@override
String toString() {
  return 'CommentDto(id: $id, ticketId: $ticketId, userId: $userId, content: $content)';
}


}

/// @nodoc
abstract mixin class $CommentDtoCopyWith<$Res>  {
  factory $CommentDtoCopyWith(CommentDto value, $Res Function(CommentDto) _then) = _$CommentDtoCopyWithImpl;
@useResult
$Res call({
 String id, TicketDto ticketId, UserDto userId, String content
});


$TicketDtoCopyWith<$Res> get ticketId;$UserDtoCopyWith<$Res> get userId;

}
/// @nodoc
class _$CommentDtoCopyWithImpl<$Res>
    implements $CommentDtoCopyWith<$Res> {
  _$CommentDtoCopyWithImpl(this._self, this._then);

  final CommentDto _self;
  final $Res Function(CommentDto) _then;

/// Create a copy of CommentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketId = null,Object? userId = null,Object? content = null,}) {
  return _then(CommentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as TicketDto,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserDto,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CommentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketDtoCopyWith<$Res> get ticketId {
  
  return $TicketDtoCopyWith<$Res>(_self.ticketId, (value) {
    return _then(_self.copyWith(ticketId: value));
  });
}/// Create a copy of CommentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get userId {
  
  return $UserDtoCopyWith<$Res>(_self.userId, (value) {
    return _then(_self.copyWith(userId: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommentDto].
extension CommentDtoPatterns on CommentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentDto value)  $default,){
final _that = this;
switch (_that) {
case _CommentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentDto value)?  $default,){
final _that = this;
switch (_that) {
case _CommentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  TicketDto ticketId,  UserDto userId,  String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentDto() when $default != null:
return $default(_that.id,_that.ticketId,_that.userId,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  TicketDto ticketId,  UserDto userId,  String content)  $default,) {final _that = this;
switch (_that) {
case _CommentDto():
return $default(_that.id,_that.ticketId,_that.userId,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  TicketDto ticketId,  UserDto userId,  String content)?  $default,) {final _that = this;
switch (_that) {
case _CommentDto() when $default != null:
return $default(_that.id,_that.ticketId,_that.userId,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentDto implements CommentDto {
  const _CommentDto({required this.id, required this.ticketId, required this.userId, required this.content});
  factory _CommentDto.fromJson(Map<String, dynamic> json) => _$CommentDtoFromJson(json);

@override final  String id;
@override final  TicketDto ticketId;
@override final  UserDto userId;
@override final  String content;

/// Create a copy of CommentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentDtoCopyWith<_CommentDto> get copyWith => __$CommentDtoCopyWithImpl<_CommentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketId,userId,content);

@override
String toString() {
  return 'CommentDto(id: $id, ticketId: $ticketId, userId: $userId, content: $content)';
}


}

/// @nodoc
abstract mixin class _$CommentDtoCopyWith<$Res> implements $CommentDtoCopyWith<$Res> {
  factory _$CommentDtoCopyWith(_CommentDto value, $Res Function(_CommentDto) _then) = __$CommentDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, TicketDto ticketId, UserDto userId, String content
});


@override $TicketDtoCopyWith<$Res> get ticketId;@override $UserDtoCopyWith<$Res> get userId;

}
/// @nodoc
class __$CommentDtoCopyWithImpl<$Res>
    implements _$CommentDtoCopyWith<$Res> {
  __$CommentDtoCopyWithImpl(this._self, this._then);

  final _CommentDto _self;
  final $Res Function(_CommentDto) _then;

/// Create a copy of CommentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketId = null,Object? userId = null,Object? content = null,}) {
  return _then(_CommentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as TicketDto,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserDto,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CommentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketDtoCopyWith<$Res> get ticketId {
  
  return $TicketDtoCopyWith<$Res>(_self.ticketId, (value) {
    return _then(_self.copyWith(ticketId: value));
  });
}/// Create a copy of CommentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get userId {
  
  return $UserDtoCopyWith<$Res>(_self.userId, (value) {
    return _then(_self.copyWith(userId: value));
  });
}
}

// dart format on
