// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateUserCommand {

 String get fullName; String get email;
/// Create a copy of CreateUserCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserCommandCopyWith<CreateUserCommand> get copyWith => _$CreateUserCommandCopyWithImpl<CreateUserCommand>(this as CreateUserCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserCommand&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,email);

@override
String toString() {
  return 'CreateUserCommand(fullName: $fullName, email: $email)';
}


}

/// @nodoc
abstract mixin class $CreateUserCommandCopyWith<$Res>  {
  factory $CreateUserCommandCopyWith(CreateUserCommand value, $Res Function(CreateUserCommand) _then) = _$CreateUserCommandCopyWithImpl;
@useResult
$Res call({
 String fullName, String email
});




}
/// @nodoc
class _$CreateUserCommandCopyWithImpl<$Res>
    implements $CreateUserCommandCopyWith<$Res> {
  _$CreateUserCommandCopyWithImpl(this._self, this._then);

  final CreateUserCommand _self;
  final $Res Function(CreateUserCommand) _then;

/// Create a copy of CreateUserCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? email = null,}) {
  return _then(CreateUserCommand(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateUserCommand].
extension CreateUserCommandPatterns on CreateUserCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateUserCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateUserCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateUserCommand value)  $default,){
final _that = this;
switch (_that) {
case _CreateUserCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateUserCommand value)?  $default,){
final _that = this;
switch (_that) {
case _CreateUserCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fullName,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateUserCommand() when $default != null:
return $default(_that.fullName,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fullName,  String email)  $default,) {final _that = this;
switch (_that) {
case _CreateUserCommand():
return $default(_that.fullName,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fullName,  String email)?  $default,) {final _that = this;
switch (_that) {
case _CreateUserCommand() when $default != null:
return $default(_that.fullName,_that.email);case _:
  return null;

}
}

}

/// @nodoc


class _CreateUserCommand implements CreateUserCommand {
  const _CreateUserCommand({required this.fullName, required this.email});
  

@override final  String fullName;
@override final  String email;

/// Create a copy of CreateUserCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateUserCommandCopyWith<_CreateUserCommand> get copyWith => __$CreateUserCommandCopyWithImpl<_CreateUserCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUserCommand&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,email);

@override
String toString() {
  return 'CreateUserCommand(fullName: $fullName, email: $email)';
}


}

/// @nodoc
abstract mixin class _$CreateUserCommandCopyWith<$Res> implements $CreateUserCommandCopyWith<$Res> {
  factory _$CreateUserCommandCopyWith(_CreateUserCommand value, $Res Function(_CreateUserCommand) _then) = __$CreateUserCommandCopyWithImpl;
@override @useResult
$Res call({
 String fullName, String email
});




}
/// @nodoc
class __$CreateUserCommandCopyWithImpl<$Res>
    implements _$CreateUserCommandCopyWith<$Res> {
  __$CreateUserCommandCopyWithImpl(this._self, this._then);

  final _CreateUserCommand _self;
  final $Res Function(_CreateUserCommand) _then;

/// Create a copy of CreateUserCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? email = null,}) {
  return _then(_CreateUserCommand(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
