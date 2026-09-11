// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_document_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadDocumentDto {

 String get objectName; int get expiresInSeconds;
/// Create a copy of UploadDocumentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadDocumentDtoCopyWith<UploadDocumentDto> get copyWith => _$UploadDocumentDtoCopyWithImpl<UploadDocumentDto>(this as UploadDocumentDto, _$identity);

  /// Serializes this UploadDocumentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadDocumentDto&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.expiresInSeconds, expiresInSeconds) || other.expiresInSeconds == expiresInSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectName,expiresInSeconds);

@override
String toString() {
  return 'UploadDocumentDto(objectName: $objectName, expiresInSeconds: $expiresInSeconds)';
}


}

/// @nodoc
abstract mixin class $UploadDocumentDtoCopyWith<$Res>  {
  factory $UploadDocumentDtoCopyWith(UploadDocumentDto value, $Res Function(UploadDocumentDto) _then) = _$UploadDocumentDtoCopyWithImpl;
@useResult
$Res call({
 String objectName, int expiresInSeconds
});




}
/// @nodoc
class _$UploadDocumentDtoCopyWithImpl<$Res>
    implements $UploadDocumentDtoCopyWith<$Res> {
  _$UploadDocumentDtoCopyWithImpl(this._self, this._then);

  final UploadDocumentDto _self;
  final $Res Function(UploadDocumentDto) _then;

/// Create a copy of UploadDocumentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectName = null,Object? expiresInSeconds = null,}) {
  return _then(UploadDocumentDto(
objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,expiresInSeconds: null == expiresInSeconds ? _self.expiresInSeconds : expiresInSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadDocumentDto].
extension UploadDocumentDtoPatterns on UploadDocumentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadDocumentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadDocumentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadDocumentDto value)  $default,){
final _that = this;
switch (_that) {
case _UploadDocumentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadDocumentDto value)?  $default,){
final _that = this;
switch (_that) {
case _UploadDocumentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String objectName,  int expiresInSeconds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadDocumentDto() when $default != null:
return $default(_that.objectName,_that.expiresInSeconds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String objectName,  int expiresInSeconds)  $default,) {final _that = this;
switch (_that) {
case _UploadDocumentDto():
return $default(_that.objectName,_that.expiresInSeconds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String objectName,  int expiresInSeconds)?  $default,) {final _that = this;
switch (_that) {
case _UploadDocumentDto() when $default != null:
return $default(_that.objectName,_that.expiresInSeconds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadDocumentDto implements UploadDocumentDto {
  const _UploadDocumentDto({required this.objectName, required this.expiresInSeconds});
  factory _UploadDocumentDto.fromJson(Map<String, dynamic> json) => _$UploadDocumentDtoFromJson(json);

@override final  String objectName;
@override final  int expiresInSeconds;

/// Create a copy of UploadDocumentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadDocumentDtoCopyWith<_UploadDocumentDto> get copyWith => __$UploadDocumentDtoCopyWithImpl<_UploadDocumentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadDocumentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadDocumentDto&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.expiresInSeconds, expiresInSeconds) || other.expiresInSeconds == expiresInSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectName,expiresInSeconds);

@override
String toString() {
  return 'UploadDocumentDto(objectName: $objectName, expiresInSeconds: $expiresInSeconds)';
}


}

/// @nodoc
abstract mixin class _$UploadDocumentDtoCopyWith<$Res> implements $UploadDocumentDtoCopyWith<$Res> {
  factory _$UploadDocumentDtoCopyWith(_UploadDocumentDto value, $Res Function(_UploadDocumentDto) _then) = __$UploadDocumentDtoCopyWithImpl;
@override @useResult
$Res call({
 String objectName, int expiresInSeconds
});




}
/// @nodoc
class __$UploadDocumentDtoCopyWithImpl<$Res>
    implements _$UploadDocumentDtoCopyWith<$Res> {
  __$UploadDocumentDtoCopyWithImpl(this._self, this._then);

  final _UploadDocumentDto _self;
  final $Res Function(_UploadDocumentDto) _then;

/// Create a copy of UploadDocumentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectName = null,Object? expiresInSeconds = null,}) {
  return _then(_UploadDocumentDto(
objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,expiresInSeconds: null == expiresInSeconds ? _self.expiresInSeconds : expiresInSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
