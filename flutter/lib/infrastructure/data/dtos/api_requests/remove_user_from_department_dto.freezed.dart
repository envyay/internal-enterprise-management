// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_user_from_department_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoveUserFromDepartmentDto {

 String get id; String get userId;
/// Create a copy of RemoveUserFromDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveUserFromDepartmentDtoCopyWith<RemoveUserFromDepartmentDto> get copyWith => _$RemoveUserFromDepartmentDtoCopyWithImpl<RemoveUserFromDepartmentDto>(this as RemoveUserFromDepartmentDto, _$identity);

  /// Serializes this RemoveUserFromDepartmentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveUserFromDepartmentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId);

@override
String toString() {
  return 'RemoveUserFromDepartmentDto(id: $id, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $RemoveUserFromDepartmentDtoCopyWith<$Res>  {
  factory $RemoveUserFromDepartmentDtoCopyWith(RemoveUserFromDepartmentDto value, $Res Function(RemoveUserFromDepartmentDto) _then) = _$RemoveUserFromDepartmentDtoCopyWithImpl;
@useResult
$Res call({
 String id, String userId
});




}
/// @nodoc
class _$RemoveUserFromDepartmentDtoCopyWithImpl<$Res>
    implements $RemoveUserFromDepartmentDtoCopyWith<$Res> {
  _$RemoveUserFromDepartmentDtoCopyWithImpl(this._self, this._then);

  final RemoveUserFromDepartmentDto _self;
  final $Res Function(RemoveUserFromDepartmentDto) _then;

/// Create a copy of RemoveUserFromDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,}) {
  return _then(RemoveUserFromDepartmentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoveUserFromDepartmentDto].
extension RemoveUserFromDepartmentDtoPatterns on RemoveUserFromDepartmentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoveUserFromDepartmentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoveUserFromDepartmentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoveUserFromDepartmentDto value)  $default,){
final _that = this;
switch (_that) {
case _RemoveUserFromDepartmentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoveUserFromDepartmentDto value)?  $default,){
final _that = this;
switch (_that) {
case _RemoveUserFromDepartmentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoveUserFromDepartmentDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId)  $default,) {final _that = this;
switch (_that) {
case _RemoveUserFromDepartmentDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId)?  $default,) {final _that = this;
switch (_that) {
case _RemoveUserFromDepartmentDto() when $default != null:
return $default(_that.id,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoveUserFromDepartmentDto implements RemoveUserFromDepartmentDto {
  const _RemoveUserFromDepartmentDto({required this.id, required this.userId});
  factory _RemoveUserFromDepartmentDto.fromJson(Map<String, dynamic> json) => _$RemoveUserFromDepartmentDtoFromJson(json);

@override final  String id;
@override final  String userId;

/// Create a copy of RemoveUserFromDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveUserFromDepartmentDtoCopyWith<_RemoveUserFromDepartmentDto> get copyWith => __$RemoveUserFromDepartmentDtoCopyWithImpl<_RemoveUserFromDepartmentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoveUserFromDepartmentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveUserFromDepartmentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId);

@override
String toString() {
  return 'RemoveUserFromDepartmentDto(id: $id, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$RemoveUserFromDepartmentDtoCopyWith<$Res> implements $RemoveUserFromDepartmentDtoCopyWith<$Res> {
  factory _$RemoveUserFromDepartmentDtoCopyWith(_RemoveUserFromDepartmentDto value, $Res Function(_RemoveUserFromDepartmentDto) _then) = __$RemoveUserFromDepartmentDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId
});




}
/// @nodoc
class __$RemoveUserFromDepartmentDtoCopyWithImpl<$Res>
    implements _$RemoveUserFromDepartmentDtoCopyWith<$Res> {
  __$RemoveUserFromDepartmentDtoCopyWithImpl(this._self, this._then);

  final _RemoveUserFromDepartmentDto _self;
  final $Res Function(_RemoveUserFromDepartmentDto) _then;

/// Create a copy of RemoveUserFromDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,}) {
  return _then(_RemoveUserFromDepartmentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
