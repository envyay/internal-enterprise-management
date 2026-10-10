// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_ticket_by_ticket_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateTicketByTicketStatusDto {

 String get id; String get ticketStatusId;
/// Create a copy of UpdateTicketByTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTicketByTicketStatusDtoCopyWith<UpdateTicketByTicketStatusDto> get copyWith => _$UpdateTicketByTicketStatusDtoCopyWithImpl<UpdateTicketByTicketStatusDto>(this as UpdateTicketByTicketStatusDto, _$identity);

  /// Serializes this UpdateTicketByTicketStatusDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTicketByTicketStatusDto&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketStatusId, ticketStatusId) || other.ticketStatusId == ticketStatusId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketStatusId);

@override
String toString() {
  return 'UpdateTicketByTicketStatusDto(id: $id, ticketStatusId: $ticketStatusId)';
}


}

/// @nodoc
abstract mixin class $UpdateTicketByTicketStatusDtoCopyWith<$Res>  {
  factory $UpdateTicketByTicketStatusDtoCopyWith(UpdateTicketByTicketStatusDto value, $Res Function(UpdateTicketByTicketStatusDto) _then) = _$UpdateTicketByTicketStatusDtoCopyWithImpl;
@useResult
$Res call({
 String id, String ticketStatusId
});




}
/// @nodoc
class _$UpdateTicketByTicketStatusDtoCopyWithImpl<$Res>
    implements $UpdateTicketByTicketStatusDtoCopyWith<$Res> {
  _$UpdateTicketByTicketStatusDtoCopyWithImpl(this._self, this._then);

  final UpdateTicketByTicketStatusDto _self;
  final $Res Function(UpdateTicketByTicketStatusDto) _then;

/// Create a copy of UpdateTicketByTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketStatusId = null,}) {
  return _then(UpdateTicketByTicketStatusDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ticketStatusId: null == ticketStatusId ? _self.ticketStatusId : ticketStatusId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateTicketByTicketStatusDto].
extension UpdateTicketByTicketStatusDtoPatterns on UpdateTicketByTicketStatusDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateTicketByTicketStatusDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateTicketByTicketStatusDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateTicketByTicketStatusDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateTicketByTicketStatusDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateTicketByTicketStatusDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateTicketByTicketStatusDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String ticketStatusId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateTicketByTicketStatusDto() when $default != null:
return $default(_that.id,_that.ticketStatusId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String ticketStatusId)  $default,) {final _that = this;
switch (_that) {
case _UpdateTicketByTicketStatusDto():
return $default(_that.id,_that.ticketStatusId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String ticketStatusId)?  $default,) {final _that = this;
switch (_that) {
case _UpdateTicketByTicketStatusDto() when $default != null:
return $default(_that.id,_that.ticketStatusId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateTicketByTicketStatusDto implements UpdateTicketByTicketStatusDto {
  const _UpdateTicketByTicketStatusDto({required this.id, required this.ticketStatusId});
  factory _UpdateTicketByTicketStatusDto.fromJson(Map<String, dynamic> json) => _$UpdateTicketByTicketStatusDtoFromJson(json);

@override final  String id;
@override final  String ticketStatusId;

/// Create a copy of UpdateTicketByTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTicketByTicketStatusDtoCopyWith<_UpdateTicketByTicketStatusDto> get copyWith => __$UpdateTicketByTicketStatusDtoCopyWithImpl<_UpdateTicketByTicketStatusDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateTicketByTicketStatusDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTicketByTicketStatusDto&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketStatusId, ticketStatusId) || other.ticketStatusId == ticketStatusId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketStatusId);

@override
String toString() {
  return 'UpdateTicketByTicketStatusDto(id: $id, ticketStatusId: $ticketStatusId)';
}


}

/// @nodoc
abstract mixin class _$UpdateTicketByTicketStatusDtoCopyWith<$Res> implements $UpdateTicketByTicketStatusDtoCopyWith<$Res> {
  factory _$UpdateTicketByTicketStatusDtoCopyWith(_UpdateTicketByTicketStatusDto value, $Res Function(_UpdateTicketByTicketStatusDto) _then) = __$UpdateTicketByTicketStatusDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String ticketStatusId
});




}
/// @nodoc
class __$UpdateTicketByTicketStatusDtoCopyWithImpl<$Res>
    implements _$UpdateTicketByTicketStatusDtoCopyWith<$Res> {
  __$UpdateTicketByTicketStatusDtoCopyWithImpl(this._self, this._then);

  final _UpdateTicketByTicketStatusDto _self;
  final $Res Function(_UpdateTicketByTicketStatusDto) _then;

/// Create a copy of UpdateTicketByTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketStatusId = null,}) {
  return _then(_UpdateTicketByTicketStatusDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ticketStatusId: null == ticketStatusId ? _self.ticketStatusId : ticketStatusId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
