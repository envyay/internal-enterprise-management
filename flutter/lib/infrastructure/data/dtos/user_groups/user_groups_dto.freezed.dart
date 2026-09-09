// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_groups_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserGroupDto {

 String get id; String get name; List<UserDto> get users;
/// Create a copy of UserGroupDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserGroupDtoCopyWith<UserGroupDto> get copyWith => _$UserGroupDtoCopyWithImpl<UserGroupDto>(this as UserGroupDto, _$identity);

  /// Serializes this UserGroupDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserGroupDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.users, users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(users));

@override
String toString() {
  return 'UserGroupDto(id: $id, name: $name, users: $users)';
}


}

/// @nodoc
abstract mixin class $UserGroupDtoCopyWith<$Res>  {
  factory $UserGroupDtoCopyWith(UserGroupDto value, $Res Function(UserGroupDto) _then) = _$UserGroupDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, List<UserDto> users
});




}
/// @nodoc
class _$UserGroupDtoCopyWithImpl<$Res>
    implements $UserGroupDtoCopyWith<$Res> {
  _$UserGroupDtoCopyWithImpl(this._self, this._then);

  final UserGroupDto _self;
  final $Res Function(UserGroupDto) _then;

/// Create a copy of UserGroupDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? users = null,}) {
  return _then(UserGroupDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserGroupDto].
extension UserGroupDtoPatterns on UserGroupDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserGroupDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserGroupDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserGroupDto value)  $default,){
final _that = this;
switch (_that) {
case _UserGroupDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserGroupDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserGroupDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  List<UserDto> users)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserGroupDto() when $default != null:
return $default(_that.id,_that.name,_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  List<UserDto> users)  $default,) {final _that = this;
switch (_that) {
case _UserGroupDto():
return $default(_that.id,_that.name,_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  List<UserDto> users)?  $default,) {final _that = this;
switch (_that) {
case _UserGroupDto() when $default != null:
return $default(_that.id,_that.name,_that.users);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserGroupDto implements UserGroupDto {
  const _UserGroupDto({required this.id, required this.name, required  List<UserDto> users}): _users = users;
  factory _UserGroupDto.fromJson(Map<String, dynamic> json) => _$UserGroupDtoFromJson(json);

@override final  String id;
@override final  String name;
 final  List<UserDto> _users;
@override List<UserDto> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


/// Create a copy of UserGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserGroupDtoCopyWith<_UserGroupDto> get copyWith => __$UserGroupDtoCopyWithImpl<_UserGroupDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserGroupDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserGroupDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._users, _users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'UserGroupDto(id: $id, name: $name, users: $users)';
}


}

/// @nodoc
abstract mixin class _$UserGroupDtoCopyWith<$Res> implements $UserGroupDtoCopyWith<$Res> {
  factory _$UserGroupDtoCopyWith(_UserGroupDto value, $Res Function(_UserGroupDto) _then) = __$UserGroupDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, List<UserDto> users
});




}
/// @nodoc
class __$UserGroupDtoCopyWithImpl<$Res>
    implements _$UserGroupDtoCopyWith<$Res> {
  __$UserGroupDtoCopyWithImpl(this._self, this._then);

  final _UserGroupDto _self;
  final $Res Function(_UserGroupDto) _then;

/// Create a copy of UserGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? users = null,}) {
  return _then(_UserGroupDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserDto>,
  ));
}


}

// dart format on
