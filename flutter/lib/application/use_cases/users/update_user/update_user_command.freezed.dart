// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateUserCommand {

 String get id; String get fullName; String get email; int get status;
/// Create a copy of UpdateUserCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserCommandCopyWith<UpdateUserCommand> get copyWith => _$UpdateUserCommandCopyWithImpl<UpdateUserCommand>(this as UpdateUserCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,fullName,email,status);

@override
String toString() {
  return 'UpdateUserCommand(id: $id, fullName: $fullName, email: $email, status: $status)';
}


}

/// @nodoc
abstract mixin class $UpdateUserCommandCopyWith<$Res>  {
  factory $UpdateUserCommandCopyWith(UpdateUserCommand value, $Res Function(UpdateUserCommand) _then) = _$UpdateUserCommandCopyWithImpl;
@useResult
$Res call({
 String id, String fullName, String email, int status
});




}
/// @nodoc
class _$UpdateUserCommandCopyWithImpl<$Res>
    implements $UpdateUserCommandCopyWith<$Res> {
  _$UpdateUserCommandCopyWithImpl(this._self, this._then);

  final UpdateUserCommand _self;
  final $Res Function(UpdateUserCommand) _then;

/// Create a copy of UpdateUserCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fullName = null,Object? email = null,Object? status = null,}) {
  return _then(UpdateUserCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateUserCommand].
extension UpdateUserCommandPatterns on UpdateUserCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateUserCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateUserCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateUserCommand value)  $default,){
final _that = this;
switch (_that) {
case _UpdateUserCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateUserCommand value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateUserCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fullName,  String email,  int status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateUserCommand() when $default != null:
return $default(_that.id,_that.fullName,_that.email,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fullName,  String email,  int status)  $default,) {final _that = this;
switch (_that) {
case _UpdateUserCommand():
return $default(_that.id,_that.fullName,_that.email,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fullName,  String email,  int status)?  $default,) {final _that = this;
switch (_that) {
case _UpdateUserCommand() when $default != null:
return $default(_that.id,_that.fullName,_that.email,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateUserCommand implements UpdateUserCommand {
  const _UpdateUserCommand({required this.id, required this.fullName, required this.email, required this.status});
  

@override final  String id;
@override final  String fullName;
@override final  String email;
@override final  int status;

/// Create a copy of UpdateUserCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserCommandCopyWith<_UpdateUserCommand> get copyWith => __$UpdateUserCommandCopyWithImpl<_UpdateUserCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,fullName,email,status);

@override
String toString() {
  return 'UpdateUserCommand(id: $id, fullName: $fullName, email: $email, status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserCommandCopyWith<$Res> implements $UpdateUserCommandCopyWith<$Res> {
  factory _$UpdateUserCommandCopyWith(_UpdateUserCommand value, $Res Function(_UpdateUserCommand) _then) = __$UpdateUserCommandCopyWithImpl;
@override @useResult
$Res call({
 String id, String fullName, String email, int status
});




}
/// @nodoc
class __$UpdateUserCommandCopyWithImpl<$Res>
    implements _$UpdateUserCommandCopyWith<$Res> {
  __$UpdateUserCommandCopyWithImpl(this._self, this._then);

  final _UpdateUserCommand _self;
  final $Res Function(_UpdateUserCommand) _then;

/// Create a copy of UpdateUserCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fullName = null,Object? email = null,Object? status = null,}) {
  return _then(_UpdateUserCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
