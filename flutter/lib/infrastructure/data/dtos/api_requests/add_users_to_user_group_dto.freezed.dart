// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_users_to_user_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddUsersToUserGroupDto {

 String get id; List<UserDto> get userIds;
/// Create a copy of AddUsersToUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddUsersToUserGroupDtoCopyWith<AddUsersToUserGroupDto> get copyWith => _$AddUsersToUserGroupDtoCopyWithImpl<AddUsersToUserGroupDto>(this as AddUsersToUserGroupDto, _$identity);

  /// Serializes this AddUsersToUserGroupDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddUsersToUserGroupDto&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.userIds, userIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(userIds));

@override
String toString() {
  return 'AddUsersToUserGroupDto(id: $id, userIds: $userIds)';
}


}

/// @nodoc
abstract mixin class $AddUsersToUserGroupDtoCopyWith<$Res>  {
  factory $AddUsersToUserGroupDtoCopyWith(AddUsersToUserGroupDto value, $Res Function(AddUsersToUserGroupDto) _then) = _$AddUsersToUserGroupDtoCopyWithImpl;
@useResult
$Res call({
 String id, List<UserDto> userIds
});




}
/// @nodoc
class _$AddUsersToUserGroupDtoCopyWithImpl<$Res>
    implements $AddUsersToUserGroupDtoCopyWith<$Res> {
  _$AddUsersToUserGroupDtoCopyWithImpl(this._self, this._then);

  final AddUsersToUserGroupDto _self;
  final $Res Function(AddUsersToUserGroupDto) _then;

/// Create a copy of AddUsersToUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userIds = null,}) {
  return _then(AddUsersToUserGroupDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userIds: null == userIds ? _self.userIds : userIds // ignore: cast_nullable_to_non_nullable
as List<UserDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [AddUsersToUserGroupDto].
extension AddUsersToUserGroupDtoPatterns on AddUsersToUserGroupDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddUsersToUserGroupDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddUsersToUserGroupDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddUsersToUserGroupDto value)  $default,){
final _that = this;
switch (_that) {
case _AddUsersToUserGroupDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddUsersToUserGroupDto value)?  $default,){
final _that = this;
switch (_that) {
case _AddUsersToUserGroupDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<UserDto> userIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddUsersToUserGroupDto() when $default != null:
return $default(_that.id,_that.userIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<UserDto> userIds)  $default,) {final _that = this;
switch (_that) {
case _AddUsersToUserGroupDto():
return $default(_that.id,_that.userIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<UserDto> userIds)?  $default,) {final _that = this;
switch (_that) {
case _AddUsersToUserGroupDto() when $default != null:
return $default(_that.id,_that.userIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddUsersToUserGroupDto implements AddUsersToUserGroupDto {
  const _AddUsersToUserGroupDto({required this.id, required  List<UserDto> userIds}): _userIds = userIds;
  factory _AddUsersToUserGroupDto.fromJson(Map<String, dynamic> json) => _$AddUsersToUserGroupDtoFromJson(json);

@override final  String id;
 final  List<UserDto> _userIds;
@override List<UserDto> get userIds {
  if (_userIds is EqualUnmodifiableListView) return _userIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userIds);
}


/// Create a copy of AddUsersToUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddUsersToUserGroupDtoCopyWith<_AddUsersToUserGroupDto> get copyWith => __$AddUsersToUserGroupDtoCopyWithImpl<_AddUsersToUserGroupDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddUsersToUserGroupDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddUsersToUserGroupDto&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._userIds, _userIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_userIds));

@override
String toString() {
  return 'AddUsersToUserGroupDto(id: $id, userIds: $userIds)';
}


}

/// @nodoc
abstract mixin class _$AddUsersToUserGroupDtoCopyWith<$Res> implements $AddUsersToUserGroupDtoCopyWith<$Res> {
  factory _$AddUsersToUserGroupDtoCopyWith(_AddUsersToUserGroupDto value, $Res Function(_AddUsersToUserGroupDto) _then) = __$AddUsersToUserGroupDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, List<UserDto> userIds
});




}
/// @nodoc
class __$AddUsersToUserGroupDtoCopyWithImpl<$Res>
    implements _$AddUsersToUserGroupDtoCopyWith<$Res> {
  __$AddUsersToUserGroupDtoCopyWithImpl(this._self, this._then);

  final _AddUsersToUserGroupDto _self;
  final $Res Function(_AddUsersToUserGroupDto) _then;

/// Create a copy of AddUsersToUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userIds = null,}) {
  return _then(_AddUsersToUserGroupDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userIds: null == userIds ? _self._userIds : userIds // ignore: cast_nullable_to_non_nullable
as List<UserDto>,
  ));
}


}

// dart format on
