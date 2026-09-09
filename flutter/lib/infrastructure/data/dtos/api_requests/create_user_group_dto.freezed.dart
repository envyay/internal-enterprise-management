// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateUserGroupDto {

 String get name; List<UserDto> get userIds;
/// Create a copy of CreateUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserGroupDtoCopyWith<CreateUserGroupDto> get copyWith => _$CreateUserGroupDtoCopyWithImpl<CreateUserGroupDto>(this as CreateUserGroupDto, _$identity);

  /// Serializes this CreateUserGroupDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserGroupDto&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.userIds, userIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(userIds));

@override
String toString() {
  return 'CreateUserGroupDto(name: $name, userIds: $userIds)';
}


}

/// @nodoc
abstract mixin class $CreateUserGroupDtoCopyWith<$Res>  {
  factory $CreateUserGroupDtoCopyWith(CreateUserGroupDto value, $Res Function(CreateUserGroupDto) _then) = _$CreateUserGroupDtoCopyWithImpl;
@useResult
$Res call({
 String name, List<UserDto> userIds
});




}
/// @nodoc
class _$CreateUserGroupDtoCopyWithImpl<$Res>
    implements $CreateUserGroupDtoCopyWith<$Res> {
  _$CreateUserGroupDtoCopyWithImpl(this._self, this._then);

  final CreateUserGroupDto _self;
  final $Res Function(CreateUserGroupDto) _then;

/// Create a copy of CreateUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? userIds = null,}) {
  return _then(CreateUserGroupDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,userIds: null == userIds ? _self.userIds : userIds // ignore: cast_nullable_to_non_nullable
as List<UserDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateUserGroupDto].
extension CreateUserGroupDtoPatterns on CreateUserGroupDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateUserGroupDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateUserGroupDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateUserGroupDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateUserGroupDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateUserGroupDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateUserGroupDto() when $default != null:
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
case _CreateUserGroupDto() when $default != null:
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
case _CreateUserGroupDto():
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
case _CreateUserGroupDto() when $default != null:
return $default(_that.name,_that.userIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateUserGroupDto implements CreateUserGroupDto {
  const _CreateUserGroupDto({required this.name, required  List<UserDto> userIds}): _userIds = userIds;
  factory _CreateUserGroupDto.fromJson(Map<String, dynamic> json) => _$CreateUserGroupDtoFromJson(json);

@override final  String name;
 final  List<UserDto> _userIds;
@override List<UserDto> get userIds {
  if (_userIds is EqualUnmodifiableListView) return _userIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userIds);
}


/// Create a copy of CreateUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateUserGroupDtoCopyWith<_CreateUserGroupDto> get copyWith => __$CreateUserGroupDtoCopyWithImpl<_CreateUserGroupDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateUserGroupDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUserGroupDto&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._userIds, _userIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_userIds));

@override
String toString() {
  return 'CreateUserGroupDto(name: $name, userIds: $userIds)';
}


}

/// @nodoc
abstract mixin class _$CreateUserGroupDtoCopyWith<$Res> implements $CreateUserGroupDtoCopyWith<$Res> {
  factory _$CreateUserGroupDtoCopyWith(_CreateUserGroupDto value, $Res Function(_CreateUserGroupDto) _then) = __$CreateUserGroupDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, List<UserDto> userIds
});




}
/// @nodoc
class __$CreateUserGroupDtoCopyWithImpl<$Res>
    implements _$CreateUserGroupDtoCopyWith<$Res> {
  __$CreateUserGroupDtoCopyWithImpl(this._self, this._then);

  final _CreateUserGroupDto _self;
  final $Res Function(_CreateUserGroupDto) _then;

/// Create a copy of CreateUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? userIds = null,}) {
  return _then(_CreateUserGroupDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,userIds: null == userIds ? _self._userIds : userIds // ignore: cast_nullable_to_non_nullable
as List<UserDto>,
  ));
}


}

// dart format on
