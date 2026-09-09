// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_department_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteDepartmentDto {

 String get id;
/// Create a copy of DeleteDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteDepartmentDtoCopyWith<DeleteDepartmentDto> get copyWith => _$DeleteDepartmentDtoCopyWithImpl<DeleteDepartmentDto>(this as DeleteDepartmentDto, _$identity);

  /// Serializes this DeleteDepartmentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteDepartmentDto&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteDepartmentDto(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteDepartmentDtoCopyWith<$Res>  {
  factory $DeleteDepartmentDtoCopyWith(DeleteDepartmentDto value, $Res Function(DeleteDepartmentDto) _then) = _$DeleteDepartmentDtoCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteDepartmentDtoCopyWithImpl<$Res>
    implements $DeleteDepartmentDtoCopyWith<$Res> {
  _$DeleteDepartmentDtoCopyWithImpl(this._self, this._then);

  final DeleteDepartmentDto _self;
  final $Res Function(DeleteDepartmentDto) _then;

/// Create a copy of DeleteDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(DeleteDepartmentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteDepartmentDto].
extension DeleteDepartmentDtoPatterns on DeleteDepartmentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteDepartmentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteDepartmentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteDepartmentDto value)  $default,){
final _that = this;
switch (_that) {
case _DeleteDepartmentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteDepartmentDto value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteDepartmentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteDepartmentDto() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id)  $default,) {final _that = this;
switch (_that) {
case _DeleteDepartmentDto():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id)?  $default,) {final _that = this;
switch (_that) {
case _DeleteDepartmentDto() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteDepartmentDto implements DeleteDepartmentDto {
  const _DeleteDepartmentDto({required this.id});
  factory _DeleteDepartmentDto.fromJson(Map<String, dynamic> json) => _$DeleteDepartmentDtoFromJson(json);

@override final  String id;

/// Create a copy of DeleteDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteDepartmentDtoCopyWith<_DeleteDepartmentDto> get copyWith => __$DeleteDepartmentDtoCopyWithImpl<_DeleteDepartmentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteDepartmentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteDepartmentDto&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteDepartmentDto(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteDepartmentDtoCopyWith<$Res> implements $DeleteDepartmentDtoCopyWith<$Res> {
  factory _$DeleteDepartmentDtoCopyWith(_DeleteDepartmentDto value, $Res Function(_DeleteDepartmentDto) _then) = __$DeleteDepartmentDtoCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteDepartmentDtoCopyWithImpl<$Res>
    implements _$DeleteDepartmentDtoCopyWith<$Res> {
  __$DeleteDepartmentDtoCopyWithImpl(this._self, this._then);

  final _DeleteDepartmentDto _self;
  final $Res Function(_DeleteDepartmentDto) _then;

/// Create a copy of DeleteDepartmentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteDepartmentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
