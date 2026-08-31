// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_sign_in_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserSignInCommand {

 String get email;
/// Create a copy of UserSignInCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSignInCommandCopyWith<UserSignInCommand> get copyWith => _$UserSignInCommandCopyWithImpl<UserSignInCommand>(this as UserSignInCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSignInCommand&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'UserSignInCommand(email: $email)';
}


}

/// @nodoc
abstract mixin class $UserSignInCommandCopyWith<$Res>  {
  factory $UserSignInCommandCopyWith(UserSignInCommand value, $Res Function(UserSignInCommand) _then) = _$UserSignInCommandCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$UserSignInCommandCopyWithImpl<$Res>
    implements $UserSignInCommandCopyWith<$Res> {
  _$UserSignInCommandCopyWithImpl(this._self, this._then);

  final UserSignInCommand _self;
  final $Res Function(UserSignInCommand) _then;

/// Create a copy of UserSignInCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,}) {
  return _then(UserSignInCommand(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSignInCommand].
extension UserSignInCommandPatterns on UserSignInCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSignInCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSignInCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSignInCommand value)  $default,){
final _that = this;
switch (_that) {
case _UserSignInCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSignInCommand value)?  $default,){
final _that = this;
switch (_that) {
case _UserSignInCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSignInCommand() when $default != null:
return $default(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email)  $default,) {final _that = this;
switch (_that) {
case _UserSignInCommand():
return $default(_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email)?  $default,) {final _that = this;
switch (_that) {
case _UserSignInCommand() when $default != null:
return $default(_that.email);case _:
  return null;

}
}

}

/// @nodoc


class _UserSignInCommand implements UserSignInCommand {
  const _UserSignInCommand({required this.email});
  

@override final  String email;

/// Create a copy of UserSignInCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSignInCommandCopyWith<_UserSignInCommand> get copyWith => __$UserSignInCommandCopyWithImpl<_UserSignInCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSignInCommand&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'UserSignInCommand(email: $email)';
}


}

/// @nodoc
abstract mixin class _$UserSignInCommandCopyWith<$Res> implements $UserSignInCommandCopyWith<$Res> {
  factory _$UserSignInCommandCopyWith(_UserSignInCommand value, $Res Function(_UserSignInCommand) _then) = __$UserSignInCommandCopyWithImpl;
@override @useResult
$Res call({
 String email
});




}
/// @nodoc
class __$UserSignInCommandCopyWithImpl<$Res>
    implements _$UserSignInCommandCopyWith<$Res> {
  __$UserSignInCommandCopyWithImpl(this._self, this._then);

  final _UserSignInCommand _self;
  final $Res Function(_UserSignInCommand) _then;

/// Create a copy of UserSignInCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_UserSignInCommand(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
