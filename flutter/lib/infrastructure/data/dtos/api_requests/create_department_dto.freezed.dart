// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_department_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateDepartmentDto {

 String get name;
/// Create a copy of CreateDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDepartmentDtoCopyWith<CreateDepartmentDto> get copyWith => _$CreateDepartmentDtoCopyWithImpl<CreateDepartmentDto>(this as CreateDepartmentDto, _$identity);

  /// Serializes this CreateDepartmentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDepartmentDto&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CreateDepartmentDto(name: $name)';
}


}

/// @nodoc
abstract mixin class $CreateDepartmentDtoCopyWith<$Res>  {
  factory $CreateDepartmentDtoCopyWith(CreateDepartmentDto value, $Res Function(CreateDepartmentDto) _then) = _$CreateDepartmentDtoCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$CreateDepartmentDtoCopyWithImpl<$Res>
    implements $CreateDepartmentDtoCopyWith<$Res> {
  _$CreateDepartmentDtoCopyWithImpl(this._self, this._then);

  final CreateDepartmentDto _self;
  final $Res Function(CreateDepartmentDto) _then;

/// Create a copy of CreateDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(CreateDepartmentDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDepartmentDto].
extension CreateDepartmentDtoPatterns on CreateDepartmentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDepartmentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDepartmentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDepartmentDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateDepartmentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDepartmentDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDepartmentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDepartmentDto() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _CreateDepartmentDto():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _CreateDepartmentDto() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDepartmentDto implements CreateDepartmentDto {
  const _CreateDepartmentDto({required this.name});
  factory _CreateDepartmentDto.fromJson(Map<String, dynamic> json) => _$CreateDepartmentDtoFromJson(json);

@override final  String name;

/// Create a copy of CreateDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDepartmentDtoCopyWith<_CreateDepartmentDto> get copyWith => __$CreateDepartmentDtoCopyWithImpl<_CreateDepartmentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDepartmentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDepartmentDto&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CreateDepartmentDto(name: $name)';
}


}

/// @nodoc
abstract mixin class _$CreateDepartmentDtoCopyWith<$Res> implements $CreateDepartmentDtoCopyWith<$Res> {
  factory _$CreateDepartmentDtoCopyWith(_CreateDepartmentDto value, $Res Function(_CreateDepartmentDto) _then) = __$CreateDepartmentDtoCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$CreateDepartmentDtoCopyWithImpl<$Res>
    implements _$CreateDepartmentDtoCopyWith<$Res> {
  __$CreateDepartmentDtoCopyWithImpl(this._self, this._then);

  final _CreateDepartmentDto _self;
  final $Res Function(_CreateDepartmentDto) _then;

/// Create a copy of CreateDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_CreateDepartmentDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
