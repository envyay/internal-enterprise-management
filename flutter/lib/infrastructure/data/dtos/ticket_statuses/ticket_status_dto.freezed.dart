// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketStatusDto {

 String get id; String get name; ProjectDto get projectId; List<TicketDto> get ticketIds;
/// Create a copy of TicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketStatusDtoCopyWith<TicketStatusDto> get copyWith => _$TicketStatusDtoCopyWithImpl<TicketStatusDto>(this as TicketStatusDto, _$identity);

  /// Serializes this TicketStatusDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketStatusDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&const DeepCollectionEquality().equals(other.ticketIds, ticketIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,projectId,const DeepCollectionEquality().hash(ticketIds));

@override
String toString() {
  return 'TicketStatusDto(id: $id, name: $name, projectId: $projectId, ticketIds: $ticketIds)';
}


}

/// @nodoc
abstract mixin class $TicketStatusDtoCopyWith<$Res>  {
  factory $TicketStatusDtoCopyWith(TicketStatusDto value, $Res Function(TicketStatusDto) _then) = _$TicketStatusDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, ProjectDto projectId, List<TicketDto> ticketIds
});


$ProjectDtoCopyWith<$Res> get projectId;

}
/// @nodoc
class _$TicketStatusDtoCopyWithImpl<$Res>
    implements $TicketStatusDtoCopyWith<$Res> {
  _$TicketStatusDtoCopyWithImpl(this._self, this._then);

  final TicketStatusDto _self;
  final $Res Function(TicketStatusDto) _then;

/// Create a copy of TicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? projectId = null,Object? ticketIds = null,}) {
  return _then(TicketStatusDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as ProjectDto,ticketIds: null == ticketIds ? _self.ticketIds : ticketIds // ignore: cast_nullable_to_non_nullable
as List<TicketDto>,
  ));
}
/// Create a copy of TicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectDtoCopyWith<$Res> get projectId {
  
  return $ProjectDtoCopyWith<$Res>(_self.projectId, (value) {
    return _then(_self.copyWith(projectId: value));
  });
}
}


/// Adds pattern-matching-related methods to [TicketStatusDto].
extension TicketStatusDtoPatterns on TicketStatusDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketStatusDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketStatusDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketStatusDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketStatusDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketStatusDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketStatusDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  ProjectDto projectId,  List<TicketDto> ticketIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketStatusDto() when $default != null:
return $default(_that.id,_that.name,_that.projectId,_that.ticketIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  ProjectDto projectId,  List<TicketDto> ticketIds)  $default,) {final _that = this;
switch (_that) {
case _TicketStatusDto():
return $default(_that.id,_that.name,_that.projectId,_that.ticketIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  ProjectDto projectId,  List<TicketDto> ticketIds)?  $default,) {final _that = this;
switch (_that) {
case _TicketStatusDto() when $default != null:
return $default(_that.id,_that.name,_that.projectId,_that.ticketIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketStatusDto implements TicketStatusDto {
  const _TicketStatusDto({required this.id, required this.name, required this.projectId, required  List<TicketDto> ticketIds}): _ticketIds = ticketIds;
  factory _TicketStatusDto.fromJson(Map<String, dynamic> json) => _$TicketStatusDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  ProjectDto projectId;
 final  List<TicketDto> _ticketIds;
@override List<TicketDto> get ticketIds {
  if (_ticketIds is EqualUnmodifiableListView) return _ticketIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ticketIds);
}


/// Create a copy of TicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketStatusDtoCopyWith<_TicketStatusDto> get copyWith => __$TicketStatusDtoCopyWithImpl<_TicketStatusDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketStatusDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketStatusDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&const DeepCollectionEquality().equals(other._ticketIds, _ticketIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,projectId,const DeepCollectionEquality().hash(_ticketIds));

@override
String toString() {
  return 'TicketStatusDto(id: $id, name: $name, projectId: $projectId, ticketIds: $ticketIds)';
}


}

/// @nodoc
abstract mixin class _$TicketStatusDtoCopyWith<$Res> implements $TicketStatusDtoCopyWith<$Res> {
  factory _$TicketStatusDtoCopyWith(_TicketStatusDto value, $Res Function(_TicketStatusDto) _then) = __$TicketStatusDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, ProjectDto projectId, List<TicketDto> ticketIds
});


@override $ProjectDtoCopyWith<$Res> get projectId;

}
/// @nodoc
class __$TicketStatusDtoCopyWithImpl<$Res>
    implements _$TicketStatusDtoCopyWith<$Res> {
  __$TicketStatusDtoCopyWithImpl(this._self, this._then);

  final _TicketStatusDto _self;
  final $Res Function(_TicketStatusDto) _then;

/// Create a copy of TicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? projectId = null,Object? ticketIds = null,}) {
  return _then(_TicketStatusDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as ProjectDto,ticketIds: null == ticketIds ? _self._ticketIds : ticketIds // ignore: cast_nullable_to_non_nullable
as List<TicketDto>,
  ));
}

/// Create a copy of TicketStatusDto
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
