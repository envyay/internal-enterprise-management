// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserDto {

 String get id; String get fullName; String get email;
/// Create a copy of UpdateUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserDtoCopyWith<UpdateUserDto> get copyWith => _$UpdateUserDtoCopyWithImpl<UpdateUserDto>(this as UpdateUserDto, _$identity);

  /// Serializes this UpdateUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,email);

@override
String toString() {
  return 'UpdateUserDto(id: $id, fullName: $fullName, email: $email)';
}


}

/// @nodoc
abstract mixin class $UpdateUserDtoCopyWith<$Res>  {
  factory $UpdateUserDtoCopyWith(UpdateUserDto value, $Res Function(UpdateUserDto) _then) = _$UpdateUserDtoCopyWithImpl;
@useResult
$Res call({
 String id, String fullName, String email
});




}
/// @nodoc
class _$UpdateUserDtoCopyWithImpl<$Res>
    implements $UpdateUserDtoCopyWith<$Res> {
  _$UpdateUserDtoCopyWithImpl(this._self, this._then);

  final UpdateUserDto _self;
  final $Res Function(UpdateUserDto) _then;

/// Create a copy of UpdateUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fullName = null,Object? email = null,}) {
  return _then(UpdateUserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateUserDto].
extension UpdateUserDtoPatterns on UpdateUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateUserDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fullName,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateUserDto() when $default != null:
return $default(_that.id,_that.fullName,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fullName,  String email)  $default,) {final _that = this;
switch (_that) {
case _UpdateUserDto():
return $default(_that.id,_that.fullName,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fullName,  String email)?  $default,) {final _that = this;
switch (_that) {
case _UpdateUserDto() when $default != null:
return $default(_that.id,_that.fullName,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateUserDto implements UpdateUserDto {
  const _UpdateUserDto({required this.id, required this.fullName, required this.email});
  factory _UpdateUserDto.fromJson(Map<String, dynamic> json) => _$UpdateUserDtoFromJson(json);

@override final  String id;
@override final  String fullName;
@override final  String email;

/// Create a copy of UpdateUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserDtoCopyWith<_UpdateUserDto> get copyWith => __$UpdateUserDtoCopyWithImpl<_UpdateUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,email);

@override
String toString() {
  return 'UpdateUserDto(id: $id, fullName: $fullName, email: $email)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserDtoCopyWith<$Res> implements $UpdateUserDtoCopyWith<$Res> {
  factory _$UpdateUserDtoCopyWith(_UpdateUserDto value, $Res Function(_UpdateUserDto) _then) = __$UpdateUserDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String fullName, String email
});




}
/// @nodoc
class __$UpdateUserDtoCopyWithImpl<$Res>
    implements _$UpdateUserDtoCopyWith<$Res> {
  __$UpdateUserDtoCopyWithImpl(this._self, this._then);

  final _UpdateUserDto _self;
  final $Res Function(_UpdateUserDto) _then;

/// Create a copy of UpdateUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fullName = null,Object? email = null,}) {
  return _then(_UpdateUserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
