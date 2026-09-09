// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_ticket_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateTicketStatusDto {

 String get name; ProjectDto get projectId;
/// Create a copy of CreateTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTicketStatusDtoCopyWith<CreateTicketStatusDto> get copyWith => _$CreateTicketStatusDtoCopyWithImpl<CreateTicketStatusDto>(this as CreateTicketStatusDto, _$identity);

  /// Serializes this CreateTicketStatusDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTicketStatusDto&&(identical(other.name, name) || other.name == name)&&(identical(other.projectId, projectId) || other.projectId == projectId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,projectId);

@override
String toString() {
  return 'CreateTicketStatusDto(name: $name, projectId: $projectId)';
}


}

/// @nodoc
abstract mixin class $CreateTicketStatusDtoCopyWith<$Res>  {
  factory $CreateTicketStatusDtoCopyWith(CreateTicketStatusDto value, $Res Function(CreateTicketStatusDto) _then) = _$CreateTicketStatusDtoCopyWithImpl;
@useResult
$Res call({
 String name, ProjectDto projectId
});


$ProjectDtoCopyWith<$Res> get projectId;

}
/// @nodoc
class _$CreateTicketStatusDtoCopyWithImpl<$Res>
    implements $CreateTicketStatusDtoCopyWith<$Res> {
  _$CreateTicketStatusDtoCopyWithImpl(this._self, this._then);

  final CreateTicketStatusDto _self;
  final $Res Function(CreateTicketStatusDto) _then;

/// Create a copy of CreateTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? projectId = null,}) {
  return _then(CreateTicketStatusDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as ProjectDto,
  ));
}
/// Create a copy of CreateTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectDtoCopyWith<$Res> get projectId {
  
  return $ProjectDtoCopyWith<$Res>(_self.projectId, (value) {
    return _then(_self.copyWith(projectId: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateTicketStatusDto].
extension CreateTicketStatusDtoPatterns on CreateTicketStatusDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTicketStatusDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTicketStatusDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTicketStatusDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateTicketStatusDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTicketStatusDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTicketStatusDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  ProjectDto projectId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTicketStatusDto() when $default != null:
return $default(_that.name,_that.projectId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  ProjectDto projectId)  $default,) {final _that = this;
switch (_that) {
case _CreateTicketStatusDto():
return $default(_that.name,_that.projectId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  ProjectDto projectId)?  $default,) {final _that = this;
switch (_that) {
case _CreateTicketStatusDto() when $default != null:
return $default(_that.name,_that.projectId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateTicketStatusDto implements CreateTicketStatusDto {
  const _CreateTicketStatusDto({required this.name, required this.projectId});
  factory _CreateTicketStatusDto.fromJson(Map<String, dynamic> json) => _$CreateTicketStatusDtoFromJson(json);

@override final  String name;
@override final  ProjectDto projectId;

/// Create a copy of CreateTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTicketStatusDtoCopyWith<_CreateTicketStatusDto> get copyWith => __$CreateTicketStatusDtoCopyWithImpl<_CreateTicketStatusDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateTicketStatusDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTicketStatusDto&&(identical(other.name, name) || other.name == name)&&(identical(other.projectId, projectId) || other.projectId == projectId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,projectId);

@override
String toString() {
  return 'CreateTicketStatusDto(name: $name, projectId: $projectId)';
}


}

/// @nodoc
abstract mixin class _$CreateTicketStatusDtoCopyWith<$Res> implements $CreateTicketStatusDtoCopyWith<$Res> {
  factory _$CreateTicketStatusDtoCopyWith(_CreateTicketStatusDto value, $Res Function(_CreateTicketStatusDto) _then) = __$CreateTicketStatusDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, ProjectDto projectId
});


@override $ProjectDtoCopyWith<$Res> get projectId;

}
/// @nodoc
class __$CreateTicketStatusDtoCopyWithImpl<$Res>
    implements _$CreateTicketStatusDtoCopyWith<$Res> {
  __$CreateTicketStatusDtoCopyWithImpl(this._self, this._then);

  final _CreateTicketStatusDto _self;
  final $Res Function(_CreateTicketStatusDto) _then;

/// Create a copy of CreateTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? projectId = null,}) {
  return _then(_CreateTicketStatusDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as ProjectDto,
  ));
}

/// Create a copy of CreateTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectDtoCopyWith<$Res> get projectId {
  
  return $ProjectDtoCopyWith<$Res>(_self.projectId, (value) {
    return _then(_self.copyWith(projectId: value));
  });
}
}

// dart format on
