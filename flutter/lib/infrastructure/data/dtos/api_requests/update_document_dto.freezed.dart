// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_document_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDocumentDto {

 String get id; String get objectName;
/// Create a copy of UpdateDocumentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDocumentDtoCopyWith<UpdateDocumentDto> get copyWith => _$UpdateDocumentDtoCopyWithImpl<UpdateDocumentDto>(this as UpdateDocumentDto, _$identity);

  /// Serializes this UpdateDocumentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDocumentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.objectName, objectName) || other.objectName == objectName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,objectName);

@override
String toString() {
  return 'UpdateDocumentDto(id: $id, objectName: $objectName)';
}


}

/// @nodoc
abstract mixin class $UpdateDocumentDtoCopyWith<$Res>  {
  factory $UpdateDocumentDtoCopyWith(UpdateDocumentDto value, $Res Function(UpdateDocumentDto) _then) = _$UpdateDocumentDtoCopyWithImpl;
@useResult
$Res call({
 String id, String objectName
});




}
/// @nodoc
class _$UpdateDocumentDtoCopyWithImpl<$Res>
    implements $UpdateDocumentDtoCopyWith<$Res> {
  _$UpdateDocumentDtoCopyWithImpl(this._self, this._then);

  final UpdateDocumentDto _self;
  final $Res Function(UpdateDocumentDto) _then;

/// Create a copy of UpdateDocumentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? objectName = null,}) {
  return _then(UpdateDocumentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDocumentDto].
extension UpdateDocumentDtoPatterns on UpdateDocumentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDocumentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDocumentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDocumentDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDocumentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDocumentDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDocumentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String objectName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDocumentDto() when $default != null:
return $default(_that.id,_that.objectName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String objectName)  $default,) {final _that = this;
switch (_that) {
case _UpdateDocumentDto():
return $default(_that.id,_that.objectName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String objectName)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDocumentDto() when $default != null:
return $default(_that.id,_that.objectName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateDocumentDto implements UpdateDocumentDto {
  const _UpdateDocumentDto({required this.id, required this.objectName});
  factory _UpdateDocumentDto.fromJson(Map<String, dynamic> json) => _$UpdateDocumentDtoFromJson(json);

@override final  String id;
@override final  String objectName;

/// Create a copy of UpdateDocumentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDocumentDtoCopyWith<_UpdateDocumentDto> get copyWith => __$UpdateDocumentDtoCopyWithImpl<_UpdateDocumentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateDocumentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDocumentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.objectName, objectName) || other.objectName == objectName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,objectName);

@override
String toString() {
  return 'UpdateDocumentDto(id: $id, objectName: $objectName)';
}


}

/// @nodoc
abstract mixin class _$UpdateDocumentDtoCopyWith<$Res> implements $UpdateDocumentDtoCopyWith<$Res> {
  factory _$UpdateDocumentDtoCopyWith(_UpdateDocumentDto value, $Res Function(_UpdateDocumentDto) _then) = __$UpdateDocumentDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String objectName
});




}
/// @nodoc
class __$UpdateDocumentDtoCopyWithImpl<$Res>
    implements _$UpdateDocumentDtoCopyWith<$Res> {
  __$UpdateDocumentDtoCopyWithImpl(this._self, this._then);

  final _UpdateDocumentDto _self;
  final $Res Function(_UpdateDocumentDto) _then;

/// Create a copy of UpdateDocumentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? objectName = null,}) {
  return _then(_UpdateDocumentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
