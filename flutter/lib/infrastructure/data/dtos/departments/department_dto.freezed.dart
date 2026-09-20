// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DepartmentDto {

 String? get id; String? get name; List<UserDto>? get users;
/// Create a copy of DepartmentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartmentDtoCopyWith<DepartmentDto> get copyWith => _$DepartmentDtoCopyWithImpl<DepartmentDto>(this as DepartmentDto, _$identity);

  /// Serializes this DepartmentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepartmentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.users, users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(users));

@override
String toString() {
  return 'DepartmentDto(id: $id, name: $name, users: $users)';
}


}

/// @nodoc
abstract mixin class $DepartmentDtoCopyWith<$Res>  {
  factory $DepartmentDtoCopyWith(DepartmentDto value, $Res Function(DepartmentDto) _then) = _$DepartmentDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, List<UserDto>? users
});




}
/// @nodoc
class _$DepartmentDtoCopyWithImpl<$Res>
    implements $DepartmentDtoCopyWith<$Res> {
  _$DepartmentDtoCopyWithImpl(this._self, this._then);

  final DepartmentDto _self;
  final $Res Function(DepartmentDto) _then;

/// Create a copy of DepartmentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? users = freezed,}) {
  return _then(DepartmentDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DepartmentDto].
extension DepartmentDtoPatterns on DepartmentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DepartmentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DepartmentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DepartmentDto value)  $default,){
final _that = this;
switch (_that) {
case _DepartmentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DepartmentDto value)?  $default,){
final _that = this;
switch (_that) {
case _DepartmentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  List<UserDto>? users)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DepartmentDto() when $default != null:
return $default(_that.id,_that.name,_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  List<UserDto>? users)  $default,) {final _that = this;
switch (_that) {
case _DepartmentDto():
return $default(_that.id,_that.name,_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  List<UserDto>? users)?  $default,) {final _that = this;
switch (_that) {
case _DepartmentDto() when $default != null:
return $default(_that.id,_that.name,_that.users);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DepartmentDto implements DepartmentDto {
  const _DepartmentDto({this.id, this.name,  List<UserDto>? users}): _users = users;
  factory _DepartmentDto.fromJson(Map<String, dynamic> json) => _$DepartmentDtoFromJson(json);

@override final  String? id;
@override final  String? name;
 final  List<UserDto>? _users;
@override List<UserDto>? get users {
  final value = _users;
  if (value == null) return null;
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DepartmentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepartmentDtoCopyWith<_DepartmentDto> get copyWith => __$DepartmentDtoCopyWithImpl<_DepartmentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepartmentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DepartmentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._users, _users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'DepartmentDto(id: $id, name: $name, users: $users)';
}


}

/// @nodoc
abstract mixin class _$DepartmentDtoCopyWith<$Res> implements $DepartmentDtoCopyWith<$Res> {
  factory _$DepartmentDtoCopyWith(_DepartmentDto value, $Res Function(_DepartmentDto) _then) = __$DepartmentDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, List<UserDto>? users
});




}
/// @nodoc
class __$DepartmentDtoCopyWithImpl<$Res>
    implements _$DepartmentDtoCopyWith<$Res> {
  __$DepartmentDtoCopyWithImpl(this._self, this._then);

  final _DepartmentDto _self;
  final $Res Function(_DepartmentDto) _then;

/// Create a copy of DepartmentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? users = freezed,}) {
  return _then(_DepartmentDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,users: freezed == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserDto>?,
  ));
}


}

// dart format on
