// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_project_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateProjectDto {

 String get name; String get description; String get code;
/// Create a copy of CreateProjectDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateProjectDtoCopyWith<CreateProjectDto> get copyWith => _$CreateProjectDtoCopyWithImpl<CreateProjectDto>(this as CreateProjectDto, _$identity);

  /// Serializes this CreateProjectDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProjectDto&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,code);

@override
String toString() {
  return 'CreateProjectDto(name: $name, description: $description, code: $code)';
}


}

/// @nodoc
abstract mixin class $CreateProjectDtoCopyWith<$Res>  {
  factory $CreateProjectDtoCopyWith(CreateProjectDto value, $Res Function(CreateProjectDto) _then) = _$CreateProjectDtoCopyWithImpl;
@useResult
$Res call({
 String name, String description, String code
});




}
/// @nodoc
class _$CreateProjectDtoCopyWithImpl<$Res>
    implements $CreateProjectDtoCopyWith<$Res> {
  _$CreateProjectDtoCopyWithImpl(this._self, this._then);

  final CreateProjectDto _self;
  final $Res Function(CreateProjectDto) _then;

/// Create a copy of CreateProjectDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? code = null,}) {
  return _then(CreateProjectDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateProjectDto].
extension CreateProjectDtoPatterns on CreateProjectDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateProjectDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateProjectDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateProjectDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateProjectDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateProjectDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateProjectDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String description,  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateProjectDto() when $default != null:
return $default(_that.name,_that.description,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String description,  String code)  $default,) {final _that = this;
switch (_that) {
case _CreateProjectDto():
return $default(_that.name,_that.description,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String description,  String code)?  $default,) {final _that = this;
switch (_that) {
case _CreateProjectDto() when $default != null:
return $default(_that.name,_that.description,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateProjectDto implements CreateProjectDto {
  const _CreateProjectDto({required this.name, required this.description, required this.code});
  factory _CreateProjectDto.fromJson(Map<String, dynamic> json) => _$CreateProjectDtoFromJson(json);

@override final  String name;
@override final  String description;
@override final  String code;

/// Create a copy of CreateProjectDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateProjectDtoCopyWith<_CreateProjectDto> get copyWith => __$CreateProjectDtoCopyWithImpl<_CreateProjectDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateProjectDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateProjectDto&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,code);

@override
String toString() {
  return 'CreateProjectDto(name: $name, description: $description, code: $code)';
}


}

/// @nodoc
abstract mixin class _$CreateProjectDtoCopyWith<$Res> implements $CreateProjectDtoCopyWith<$Res> {
  factory _$CreateProjectDtoCopyWith(_CreateProjectDto value, $Res Function(_CreateProjectDto) _then) = __$CreateProjectDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, String code
});




}
/// @nodoc
class __$CreateProjectDtoCopyWithImpl<$Res>
    implements _$CreateProjectDtoCopyWith<$Res> {
  __$CreateProjectDtoCopyWithImpl(this._self, this._then);

  final _CreateProjectDto _self;
  final $Res Function(_CreateProjectDto) _then;

/// Create a copy of CreateProjectDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? code = null,}) {
  return _then(_CreateProjectDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
