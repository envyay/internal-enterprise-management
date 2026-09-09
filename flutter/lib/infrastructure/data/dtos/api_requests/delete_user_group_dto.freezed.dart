// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_user_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteUserGroupDto {

 String get id;
/// Create a copy of DeleteUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteUserGroupDtoCopyWith<DeleteUserGroupDto> get copyWith => _$DeleteUserGroupDtoCopyWithImpl<DeleteUserGroupDto>(this as DeleteUserGroupDto, _$identity);

  /// Serializes this DeleteUserGroupDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserGroupDto&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteUserGroupDto(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteUserGroupDtoCopyWith<$Res>  {
  factory $DeleteUserGroupDtoCopyWith(DeleteUserGroupDto value, $Res Function(DeleteUserGroupDto) _then) = _$DeleteUserGroupDtoCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteUserGroupDtoCopyWithImpl<$Res>
    implements $DeleteUserGroupDtoCopyWith<$Res> {
  _$DeleteUserGroupDtoCopyWithImpl(this._self, this._then);

  final DeleteUserGroupDto _self;
  final $Res Function(DeleteUserGroupDto) _then;

/// Create a copy of DeleteUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(DeleteUserGroupDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteUserGroupDto].
extension DeleteUserGroupDtoPatterns on DeleteUserGroupDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteUserGroupDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteUserGroupDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteUserGroupDto value)  $default,){
final _that = this;
switch (_that) {
case _DeleteUserGroupDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteUserGroupDto value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteUserGroupDto() when $default != null:
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
case _DeleteUserGroupDto() when $default != null:
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
case _DeleteUserGroupDto():
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
case _DeleteUserGroupDto() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteUserGroupDto implements DeleteUserGroupDto {
  const _DeleteUserGroupDto({required this.id});
  factory _DeleteUserGroupDto.fromJson(Map<String, dynamic> json) => _$DeleteUserGroupDtoFromJson(json);

@override final  String id;

/// Create a copy of DeleteUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteUserGroupDtoCopyWith<_DeleteUserGroupDto> get copyWith => __$DeleteUserGroupDtoCopyWithImpl<_DeleteUserGroupDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteUserGroupDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteUserGroupDto&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteUserGroupDto(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteUserGroupDtoCopyWith<$Res> implements $DeleteUserGroupDtoCopyWith<$Res> {
  factory _$DeleteUserGroupDtoCopyWith(_DeleteUserGroupDto value, $Res Function(_DeleteUserGroupDto) _then) = __$DeleteUserGroupDtoCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteUserGroupDtoCopyWithImpl<$Res>
    implements _$DeleteUserGroupDtoCopyWith<$Res> {
  __$DeleteUserGroupDtoCopyWithImpl(this._self, this._then);

  final _DeleteUserGroupDto _self;
  final $Res Function(_DeleteUserGroupDto) _then;

/// Create a copy of DeleteUserGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteUserGroupDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
