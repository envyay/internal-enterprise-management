// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_department_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDepartmentDto {

 String get id; String get name;
/// Create a copy of UpdateDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDepartmentDtoCopyWith<UpdateDepartmentDto> get copyWith => _$UpdateDepartmentDtoCopyWithImpl<UpdateDepartmentDto>(this as UpdateDepartmentDto, _$identity);

  /// Serializes this UpdateDepartmentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDepartmentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'UpdateDepartmentDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $UpdateDepartmentDtoCopyWith<$Res>  {
  factory $UpdateDepartmentDtoCopyWith(UpdateDepartmentDto value, $Res Function(UpdateDepartmentDto) _then) = _$UpdateDepartmentDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$UpdateDepartmentDtoCopyWithImpl<$Res>
    implements $UpdateDepartmentDtoCopyWith<$Res> {
  _$UpdateDepartmentDtoCopyWithImpl(this._self, this._then);

  final UpdateDepartmentDto _self;
  final $Res Function(UpdateDepartmentDto) _then;

/// Create a copy of UpdateDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(UpdateDepartmentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDepartmentDto].
extension UpdateDepartmentDtoPatterns on UpdateDepartmentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDepartmentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDepartmentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDepartmentDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDepartmentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDepartmentDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDepartmentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDepartmentDto() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _UpdateDepartmentDto():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDepartmentDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateDepartmentDto implements UpdateDepartmentDto {
  const _UpdateDepartmentDto({required this.id, required this.name});
  factory _UpdateDepartmentDto.fromJson(Map<String, dynamic> json) => _$UpdateDepartmentDtoFromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of UpdateDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDepartmentDtoCopyWith<_UpdateDepartmentDto> get copyWith => __$UpdateDepartmentDtoCopyWithImpl<_UpdateDepartmentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateDepartmentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDepartmentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'UpdateDepartmentDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$UpdateDepartmentDtoCopyWith<$Res> implements $UpdateDepartmentDtoCopyWith<$Res> {
  factory _$UpdateDepartmentDtoCopyWith(_UpdateDepartmentDto value, $Res Function(_UpdateDepartmentDto) _then) = __$UpdateDepartmentDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$UpdateDepartmentDtoCopyWithImpl<$Res>
    implements _$UpdateDepartmentDtoCopyWith<$Res> {
  __$UpdateDepartmentDtoCopyWithImpl(this._self, this._then);

  final _UpdateDepartmentDto _self;
  final $Res Function(_UpdateDepartmentDto) _then;

/// Create a copy of UpdateDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_UpdateDepartmentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
