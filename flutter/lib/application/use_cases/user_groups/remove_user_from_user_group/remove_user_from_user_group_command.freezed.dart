// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_user_from_user_group_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RemoveUserFromUserGroupCommand {

 String get id; UserDto get userId;
/// Create a copy of RemoveUserFromUserGroupCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveUserFromUserGroupCommandCopyWith<RemoveUserFromUserGroupCommand> get copyWith => _$RemoveUserFromUserGroupCommandCopyWithImpl<RemoveUserFromUserGroupCommand>(this as RemoveUserFromUserGroupCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveUserFromUserGroupCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId);

@override
String toString() {
  return 'RemoveUserFromUserGroupCommand(id: $id, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $RemoveUserFromUserGroupCommandCopyWith<$Res>  {
  factory $RemoveUserFromUserGroupCommandCopyWith(RemoveUserFromUserGroupCommand value, $Res Function(RemoveUserFromUserGroupCommand) _then) = _$RemoveUserFromUserGroupCommandCopyWithImpl;
@useResult
$Res call({
 String id, UserDto userId
});


$UserDtoCopyWith<$Res> get userId;

}
/// @nodoc
class _$RemoveUserFromUserGroupCommandCopyWithImpl<$Res>
    implements $RemoveUserFromUserGroupCommandCopyWith<$Res> {
  _$RemoveUserFromUserGroupCommandCopyWithImpl(this._self, this._then);

  final RemoveUserFromUserGroupCommand _self;
  final $Res Function(RemoveUserFromUserGroupCommand) _then;

/// Create a copy of RemoveUserFromUserGroupCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,}) {
  return _then(RemoveUserFromUserGroupCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}
/// Create a copy of RemoveUserFromUserGroupCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get userId {
  
  return $UserDtoCopyWith<$Res>(_self.userId, (value) {
    return _then(_self.copyWith(userId: value));
  });
}
}


/// Adds pattern-matching-related methods to [RemoveUserFromUserGroupCommand].
extension RemoveUserFromUserGroupCommandPatterns on RemoveUserFromUserGroupCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoveUserFromUserGroupCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoveUserFromUserGroupCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoveUserFromUserGroupCommand value)  $default,){
final _that = this;
switch (_that) {
case _RemoveUserFromUserGroupCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoveUserFromUserGroupCommand value)?  $default,){
final _that = this;
switch (_that) {
case _RemoveUserFromUserGroupCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  UserDto userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoveUserFromUserGroupCommand() when $default != null:
return $default(_that.id,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  UserDto userId)  $default,) {final _that = this;
switch (_that) {
case _RemoveUserFromUserGroupCommand():
return $default(_that.id,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  UserDto userId)?  $default,) {final _that = this;
switch (_that) {
case _RemoveUserFromUserGroupCommand() when $default != null:
return $default(_that.id,_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _RemoveUserFromUserGroupCommand implements RemoveUserFromUserGroupCommand {
  const _RemoveUserFromUserGroupCommand({required this.id, required this.userId});
  

@override final  String id;
@override final  UserDto userId;

/// Create a copy of RemoveUserFromUserGroupCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveUserFromUserGroupCommandCopyWith<_RemoveUserFromUserGroupCommand> get copyWith => __$RemoveUserFromUserGroupCommandCopyWithImpl<_RemoveUserFromUserGroupCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveUserFromUserGroupCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId);

@override
String toString() {
  return 'RemoveUserFromUserGroupCommand(id: $id, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$RemoveUserFromUserGroupCommandCopyWith<$Res> implements $RemoveUserFromUserGroupCommandCopyWith<$Res> {
  factory _$RemoveUserFromUserGroupCommandCopyWith(_RemoveUserFromUserGroupCommand value, $Res Function(_RemoveUserFromUserGroupCommand) _then) = __$RemoveUserFromUserGroupCommandCopyWithImpl;
@override @useResult
$Res call({
 String id, UserDto userId
});


@override $UserDtoCopyWith<$Res> get userId;

}
/// @nodoc
class __$RemoveUserFromUserGroupCommandCopyWithImpl<$Res>
    implements _$RemoveUserFromUserGroupCommandCopyWith<$Res> {
  __$RemoveUserFromUserGroupCommandCopyWithImpl(this._self, this._then);

  final _RemoveUserFromUserGroupCommand _self;
  final $Res Function(_RemoveUserFromUserGroupCommand) _then;

/// Create a copy of RemoveUserFromUserGroupCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,}) {
  return _then(_RemoveUserFromUserGroupCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}

/// Create a copy of RemoveUserFromUserGroupCommand
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
