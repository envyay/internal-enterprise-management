// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_group_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateUserGroupCommand {

 String get name; List<UserDto> get userIds;
/// Create a copy of CreateUserGroupCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserGroupCommandCopyWith<CreateUserGroupCommand> get copyWith => _$CreateUserGroupCommandCopyWithImpl<CreateUserGroupCommand>(this as CreateUserGroupCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserGroupCommand&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.userIds, userIds));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(userIds));

@override
String toString() {
  return 'CreateUserGroupCommand(name: $name, userIds: $userIds)';
}


}

/// @nodoc
abstract mixin class $CreateUserGroupCommandCopyWith<$Res>  {
  factory $CreateUserGroupCommandCopyWith(CreateUserGroupCommand value, $Res Function(CreateUserGroupCommand) _then) = _$CreateUserGroupCommandCopyWithImpl;
@useResult
$Res call({
 String name, List<UserDto> userIds
});




}
/// @nodoc
class _$CreateUserGroupCommandCopyWithImpl<$Res>
    implements $CreateUserGroupCommandCopyWith<$Res> {
  _$CreateUserGroupCommandCopyWithImpl(this._self, this._then);

  final CreateUserGroupCommand _self;
  final $Res Function(CreateUserGroupCommand) _then;

/// Create a copy of CreateUserGroupCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? userIds = null,}) {
  return _then(CreateUserGroupCommand(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,userIds: null == userIds ? _self.userIds : userIds // ignore: cast_nullable_to_non_nullable
as List<UserDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateUserGroupCommand].
extension CreateUserGroupCommandPatterns on CreateUserGroupCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateUserGroupCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateUserGroupCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateUserGroupCommand value)  $default,){
final _that = this;
switch (_that) {
case _CreateUserGroupCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateUserGroupCommand value)?  $default,){
final _that = this;
switch (_that) {
case _CreateUserGroupCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<UserDto> userIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateUserGroupCommand() when $default != null:
return $default(_that.name,_that.userIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<UserDto> userIds)  $default,) {final _that = this;
switch (_that) {
case _CreateUserGroupCommand():
return $default(_that.name,_that.userIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<UserDto> userIds)?  $default,) {final _that = this;
switch (_that) {
case _CreateUserGroupCommand() when $default != null:
return $default(_that.name,_that.userIds);case _:
  return null;

}
}

}

/// @nodoc


class _CreateUserGroupCommand implements CreateUserGroupCommand {
  const _CreateUserGroupCommand({required this.name, required  List<UserDto> userIds}): _userIds = userIds;
  

@override final  String name;
 final  List<UserDto> _userIds;
@override List<UserDto> get userIds {
  if (_userIds is EqualUnmodifiableListView) return _userIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userIds);
}


/// Create a copy of CreateUserGroupCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateUserGroupCommandCopyWith<_CreateUserGroupCommand> get copyWith => __$CreateUserGroupCommandCopyWithImpl<_CreateUserGroupCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUserGroupCommand&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._userIds, _userIds));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_userIds));

@override
String toString() {
  return 'CreateUserGroupCommand(name: $name, userIds: $userIds)';
}


}

/// @nodoc
abstract mixin class _$CreateUserGroupCommandCopyWith<$Res> implements $CreateUserGroupCommandCopyWith<$Res> {
  factory _$CreateUserGroupCommandCopyWith(_CreateUserGroupCommand value, $Res Function(_CreateUserGroupCommand) _then) = __$CreateUserGroupCommandCopyWithImpl;
@override @useResult
$Res call({
 String name, List<UserDto> userIds
});




}
/// @nodoc
class __$CreateUserGroupCommandCopyWithImpl<$Res>
    implements _$CreateUserGroupCommandCopyWith<$Res> {
  __$CreateUserGroupCommandCopyWithImpl(this._self, this._then);

  final _CreateUserGroupCommand _self;
  final $Res Function(_CreateUserGroupCommand) _then;

/// Create a copy of CreateUserGroupCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? userIds = null,}) {
  return _then(_CreateUserGroupCommand(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,userIds: null == userIds ? _self._userIds : userIds // ignore: cast_nullable_to_non_nullable
as List<UserDto>,
  ));
}


}

// dart format on
