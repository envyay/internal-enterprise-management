// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_ticket_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteTicketStatusDto {

 String get id;
/// Create a copy of DeleteTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTicketStatusDtoCopyWith<DeleteTicketStatusDto> get copyWith => _$DeleteTicketStatusDtoCopyWithImpl<DeleteTicketStatusDto>(this as DeleteTicketStatusDto, _$identity);

  /// Serializes this DeleteTicketStatusDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTicketStatusDto&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteTicketStatusDto(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteTicketStatusDtoCopyWith<$Res>  {
  factory $DeleteTicketStatusDtoCopyWith(DeleteTicketStatusDto value, $Res Function(DeleteTicketStatusDto) _then) = _$DeleteTicketStatusDtoCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteTicketStatusDtoCopyWithImpl<$Res>
    implements $DeleteTicketStatusDtoCopyWith<$Res> {
  _$DeleteTicketStatusDtoCopyWithImpl(this._self, this._then);

  final DeleteTicketStatusDto _self;
  final $Res Function(DeleteTicketStatusDto) _then;

/// Create a copy of DeleteTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(DeleteTicketStatusDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteTicketStatusDto].
extension DeleteTicketStatusDtoPatterns on DeleteTicketStatusDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteTicketStatusDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteTicketStatusDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteTicketStatusDto value)  $default,){
final _that = this;
switch (_that) {
case _DeleteTicketStatusDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteTicketStatusDto value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteTicketStatusDto() when $default != null:
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
case _DeleteTicketStatusDto() when $default != null:
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
case _DeleteTicketStatusDto():
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
case _DeleteTicketStatusDto() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteTicketStatusDto implements DeleteTicketStatusDto {
  const _DeleteTicketStatusDto({required this.id});
  factory _DeleteTicketStatusDto.fromJson(Map<String, dynamic> json) => _$DeleteTicketStatusDtoFromJson(json);

@override final  String id;

/// Create a copy of DeleteTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTicketStatusDtoCopyWith<_DeleteTicketStatusDto> get copyWith => __$DeleteTicketStatusDtoCopyWithImpl<_DeleteTicketStatusDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteTicketStatusDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTicketStatusDto&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteTicketStatusDto(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteTicketStatusDtoCopyWith<$Res> implements $DeleteTicketStatusDtoCopyWith<$Res> {
  factory _$DeleteTicketStatusDtoCopyWith(_DeleteTicketStatusDto value, $Res Function(_DeleteTicketStatusDto) _then) = __$DeleteTicketStatusDtoCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteTicketStatusDtoCopyWithImpl<$Res>
    implements _$DeleteTicketStatusDtoCopyWith<$Res> {
  __$DeleteTicketStatusDtoCopyWithImpl(this._self, this._then);

  final _DeleteTicketStatusDto _self;
  final $Res Function(_DeleteTicketStatusDto) _then;

/// Create a copy of DeleteTicketStatusDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteTicketStatusDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
