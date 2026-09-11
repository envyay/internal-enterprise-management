// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_comment_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateCommentCommand {

 String get content; TicketDto get ticketId; UserDto get userId;
/// Create a copy of CreateCommentCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCommentCommandCopyWith<CreateCommentCommand> get copyWith => _$CreateCommentCommandCopyWithImpl<CreateCommentCommand>(this as CreateCommentCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCommentCommand&&(identical(other.content, content) || other.content == content)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,content,ticketId,userId);

@override
String toString() {
  return 'CreateCommentCommand(content: $content, ticketId: $ticketId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $CreateCommentCommandCopyWith<$Res>  {
  factory $CreateCommentCommandCopyWith(CreateCommentCommand value, $Res Function(CreateCommentCommand) _then) = _$CreateCommentCommandCopyWithImpl;
@useResult
$Res call({
 String content, TicketDto ticketId, UserDto userId
});


$TicketDtoCopyWith<$Res> get ticketId;$UserDtoCopyWith<$Res> get userId;

}
/// @nodoc
class _$CreateCommentCommandCopyWithImpl<$Res>
    implements $CreateCommentCommandCopyWith<$Res> {
  _$CreateCommentCommandCopyWithImpl(this._self, this._then);

  final CreateCommentCommand _self;
  final $Res Function(CreateCommentCommand) _then;

/// Create a copy of CreateCommentCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? ticketId = null,Object? userId = null,}) {
  return _then(CreateCommentCommand(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as TicketDto,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}
/// Create a copy of CreateCommentCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketDtoCopyWith<$Res> get ticketId {
  
  return $TicketDtoCopyWith<$Res>(_self.ticketId, (value) {
    return _then(_self.copyWith(ticketId: value));
  });
}/// Create a copy of CreateCommentCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get userId {
  
  return $UserDtoCopyWith<$Res>(_self.userId, (value) {
    return _then(_self.copyWith(userId: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateCommentCommand].
extension CreateCommentCommandPatterns on CreateCommentCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCommentCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCommentCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCommentCommand value)  $default,){
final _that = this;
switch (_that) {
case _CreateCommentCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCommentCommand value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCommentCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content,  TicketDto ticketId,  UserDto userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCommentCommand() when $default != null:
return $default(_that.content,_that.ticketId,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content,  TicketDto ticketId,  UserDto userId)  $default,) {final _that = this;
switch (_that) {
case _CreateCommentCommand():
return $default(_that.content,_that.ticketId,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content,  TicketDto ticketId,  UserDto userId)?  $default,) {final _that = this;
switch (_that) {
case _CreateCommentCommand() when $default != null:
return $default(_that.content,_that.ticketId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCommentCommand implements CreateCommentCommand {
  const _CreateCommentCommand({required this.content, required this.ticketId, required this.userId});
  

@override final  String content;
@override final  TicketDto ticketId;
@override final  UserDto userId;

/// Create a copy of CreateCommentCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCommentCommandCopyWith<_CreateCommentCommand> get copyWith => __$CreateCommentCommandCopyWithImpl<_CreateCommentCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCommentCommand&&(identical(other.content, content) || other.content == content)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,content,ticketId,userId);

@override
String toString() {
  return 'CreateCommentCommand(content: $content, ticketId: $ticketId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$CreateCommentCommandCopyWith<$Res> implements $CreateCommentCommandCopyWith<$Res> {
  factory _$CreateCommentCommandCopyWith(_CreateCommentCommand value, $Res Function(_CreateCommentCommand) _then) = __$CreateCommentCommandCopyWithImpl;
@override @useResult
$Res call({
 String content, TicketDto ticketId, UserDto userId
});


@override $TicketDtoCopyWith<$Res> get ticketId;@override $UserDtoCopyWith<$Res> get userId;

}
/// @nodoc
class __$CreateCommentCommandCopyWithImpl<$Res>
    implements _$CreateCommentCommandCopyWith<$Res> {
  __$CreateCommentCommandCopyWithImpl(this._self, this._then);

  final _CreateCommentCommand _self;
  final $Res Function(_CreateCommentCommand) _then;

/// Create a copy of CreateCommentCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? ticketId = null,Object? userId = null,}) {
  return _then(_CreateCommentCommand(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as TicketDto,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}

/// Create a copy of CreateCommentCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketDtoCopyWith<$Res> get ticketId {
  
  return $TicketDtoCopyWith<$Res>(_self.ticketId, (value) {
    return _then(_self.copyWith(ticketId: value));
  });
}/// Create a copy of CreateCommentCommand
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
