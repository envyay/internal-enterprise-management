// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_user_from_user_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoveUserFromUserGroupDto {

 String get id; UserDto get userId;
/// Create a copy of RemoveUserFromUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveUserFromUserGroupDtoCopyWith<RemoveUserFromUserGroupDto> get copyWith => _$RemoveUserFromUserGroupDtoCopyWithImpl<RemoveUserFromUserGroupDto>(this as RemoveUserFromUserGroupDto, _$identity);

  /// Serializes this RemoveUserFromUserGroupDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveUserFromUserGroupDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId);

@override
String toString() {
  return 'RemoveUserFromUserGroupDto(id: $id, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $RemoveUserFromUserGroupDtoCopyWith<$Res>  {
  factory $RemoveUserFromUserGroupDtoCopyWith(RemoveUserFromUserGroupDto value, $Res Function(RemoveUserFromUserGroupDto) _then) = _$RemoveUserFromUserGroupDtoCopyWithImpl;
@useResult
$Res call({
 String id, UserDto userId
});


$UserDtoCopyWith<$Res> get userId;

}
/// @nodoc
class _$RemoveUserFromUserGroupDtoCopyWithImpl<$Res>
    implements $RemoveUserFromUserGroupDtoCopyWith<$Res> {
  _$RemoveUserFromUserGroupDtoCopyWithImpl(this._self, this._then);

  final RemoveUserFromUserGroupDto _self;
  final $Res Function(RemoveUserFromUserGroupDto) _then;

/// Create a copy of RemoveUserFromUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,}) {
  return _then(RemoveUserFromUserGroupDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}
/// Create a copy of RemoveUserFromUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get userId {
  
  return $UserDtoCopyWith<$Res>(_self.userId, (value) {
    return _then(_self.copyWith(userId: value));
  });
}
}


/// Adds pattern-matching-related methods to [RemoveUserFromUserGroupDto].
extension RemoveUserFromUserGroupDtoPatterns on RemoveUserFromUserGroupDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoveUserFromUserGroupDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoveUserFromUserGroupDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoveUserFromUserGroupDto value)  $default,){
final _that = this;
switch (_that) {
case _RemoveUserFromUserGroupDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoveUserFromUserGroupDto value)?  $default,){
final _that = this;
switch (_that) {
case _RemoveUserFromUserGroupDto() when $default != null:
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
case _RemoveUserFromUserGroupDto() when $default != null:
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
case _RemoveUserFromUserGroupDto():
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
case _RemoveUserFromUserGroupDto() when $default != null:
return $default(_that.id,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoveUserFromUserGroupDto implements RemoveUserFromUserGroupDto {
  const _RemoveUserFromUserGroupDto({required this.id, required this.userId});
  factory _RemoveUserFromUserGroupDto.fromJson(Map<String, dynamic> json) => _$RemoveUserFromUserGroupDtoFromJson(json);

@override final  String id;
@override final  UserDto userId;

/// Create a copy of RemoveUserFromUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveUserFromUserGroupDtoCopyWith<_RemoveUserFromUserGroupDto> get copyWith => __$RemoveUserFromUserGroupDtoCopyWithImpl<_RemoveUserFromUserGroupDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoveUserFromUserGroupDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveUserFromUserGroupDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId);

@override
String toString() {
  return 'RemoveUserFromUserGroupDto(id: $id, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$RemoveUserFromUserGroupDtoCopyWith<$Res> implements $RemoveUserFromUserGroupDtoCopyWith<$Res> {
  factory _$RemoveUserFromUserGroupDtoCopyWith(_RemoveUserFromUserGroupDto value, $Res Function(_RemoveUserFromUserGroupDto) _then) = __$RemoveUserFromUserGroupDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, UserDto userId
});


@override $UserDtoCopyWith<$Res> get userId;

}
/// @nodoc
class __$RemoveUserFromUserGroupDtoCopyWithImpl<$Res>
    implements _$RemoveUserFromUserGroupDtoCopyWith<$Res> {
  __$RemoveUserFromUserGroupDtoCopyWithImpl(this._self, this._then);

  final _RemoveUserFromUserGroupDto _self;
  final $Res Function(_RemoveUserFromUserGroupDto) _then;

/// Create a copy of RemoveUserFromUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,}) {
  return _then(_RemoveUserFromUserGroupDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}

/// Create a copy of RemoveUserFromUserGroupDto
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
