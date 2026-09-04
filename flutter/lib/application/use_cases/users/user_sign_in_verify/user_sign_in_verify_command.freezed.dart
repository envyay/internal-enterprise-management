// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_sign_in_verify_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserSignInVerifyCommand {

 String get email; String get otp;
/// Create a copy of UserSignInVerifyCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSignInVerifyCommandCopyWith<UserSignInVerifyCommand> get copyWith => _$UserSignInVerifyCommandCopyWithImpl<UserSignInVerifyCommand>(this as UserSignInVerifyCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSignInVerifyCommand&&(identical(other.email, email) || other.email == email)&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,email,otp);

@override
String toString() {
  return 'UserSignInVerifyCommand(email: $email, otp: $otp)';
}


}

/// @nodoc
abstract mixin class $UserSignInVerifyCommandCopyWith<$Res>  {
  factory $UserSignInVerifyCommandCopyWith(UserSignInVerifyCommand value, $Res Function(UserSignInVerifyCommand) _then) = _$UserSignInVerifyCommandCopyWithImpl;
@useResult
$Res call({
 String email, String otp
});




}
/// @nodoc
class _$UserSignInVerifyCommandCopyWithImpl<$Res>
    implements $UserSignInVerifyCommandCopyWith<$Res> {
  _$UserSignInVerifyCommandCopyWithImpl(this._self, this._then);

  final UserSignInVerifyCommand _self;
  final $Res Function(UserSignInVerifyCommand) _then;

/// Create a copy of UserSignInVerifyCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? otp = null,}) {
  return _then(UserSignInVerifyCommand(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSignInVerifyCommand].
extension UserSignInVerifyCommandPatterns on UserSignInVerifyCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSignInVerifyCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSignInVerifyCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSignInVerifyCommand value)  $default,){
final _that = this;
switch (_that) {
case _UserSignInVerifyCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSignInVerifyCommand value)?  $default,){
final _that = this;
switch (_that) {
case _UserSignInVerifyCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String otp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSignInVerifyCommand() when $default != null:
return $default(_that.email,_that.otp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String otp)  $default,) {final _that = this;
switch (_that) {
case _UserSignInVerifyCommand():
return $default(_that.email,_that.otp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String otp)?  $default,) {final _that = this;
switch (_that) {
case _UserSignInVerifyCommand() when $default != null:
return $default(_that.email,_that.otp);case _:
  return null;

}
}

}

/// @nodoc


class _UserSignInVerifyCommand implements UserSignInVerifyCommand {
  const _UserSignInVerifyCommand({required this.email, required this.otp});
  

@override final  String email;
@override final  String otp;

/// Create a copy of UserSignInVerifyCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSignInVerifyCommandCopyWith<_UserSignInVerifyCommand> get copyWith => __$UserSignInVerifyCommandCopyWithImpl<_UserSignInVerifyCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSignInVerifyCommand&&(identical(other.email, email) || other.email == email)&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,email,otp);

@override
String toString() {
  return 'UserSignInVerifyCommand(email: $email, otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$UserSignInVerifyCommandCopyWith<$Res> implements $UserSignInVerifyCommandCopyWith<$Res> {
  factory _$UserSignInVerifyCommandCopyWith(_UserSignInVerifyCommand value, $Res Function(_UserSignInVerifyCommand) _then) = __$UserSignInVerifyCommandCopyWithImpl;
@override @useResult
$Res call({
 String email, String otp
});




}
/// @nodoc
class __$UserSignInVerifyCommandCopyWithImpl<$Res>
    implements _$UserSignInVerifyCommandCopyWith<$Res> {
  __$UserSignInVerifyCommandCopyWithImpl(this._self, this._then);

  final _UserSignInVerifyCommand _self;
  final $Res Function(_UserSignInVerifyCommand) _then;

/// Create a copy of UserSignInVerifyCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? otp = null,}) {
  return _then(_UserSignInVerifyCommand(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
