// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_document_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DownloadDocumentDto {

 String get objectName; int get expiresInSeconds;
/// Create a copy of DownloadDocumentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadDocumentDtoCopyWith<DownloadDocumentDto> get copyWith => _$DownloadDocumentDtoCopyWithImpl<DownloadDocumentDto>(this as DownloadDocumentDto, _$identity);

  /// Serializes this DownloadDocumentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadDocumentDto&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.expiresInSeconds, expiresInSeconds) || other.expiresInSeconds == expiresInSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectName,expiresInSeconds);

@override
String toString() {
  return 'DownloadDocumentDto(objectName: $objectName, expiresInSeconds: $expiresInSeconds)';
}


}

/// @nodoc
abstract mixin class $DownloadDocumentDtoCopyWith<$Res>  {
  factory $DownloadDocumentDtoCopyWith(DownloadDocumentDto value, $Res Function(DownloadDocumentDto) _then) = _$DownloadDocumentDtoCopyWithImpl;
@useResult
$Res call({
 String objectName, int expiresInSeconds
});




}
/// @nodoc
class _$DownloadDocumentDtoCopyWithImpl<$Res>
    implements $DownloadDocumentDtoCopyWith<$Res> {
  _$DownloadDocumentDtoCopyWithImpl(this._self, this._then);

  final DownloadDocumentDto _self;
  final $Res Function(DownloadDocumentDto) _then;

/// Create a copy of DownloadDocumentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectName = null,Object? expiresInSeconds = null,}) {
  return _then(DownloadDocumentDto(
objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,expiresInSeconds: null == expiresInSeconds ? _self.expiresInSeconds : expiresInSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DownloadDocumentDto].
extension DownloadDocumentDtoPatterns on DownloadDocumentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DownloadDocumentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DownloadDocumentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DownloadDocumentDto value)  $default,){
final _that = this;
switch (_that) {
case _DownloadDocumentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DownloadDocumentDto value)?  $default,){
final _that = this;
switch (_that) {
case _DownloadDocumentDto() when $default != null:
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
case _DownloadDocumentDto() when $default != null:
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
case _DownloadDocumentDto():
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
case _DownloadDocumentDto() when $default != null:
return $default(_that.objectName,_that.expiresInSeconds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DownloadDocumentDto implements DownloadDocumentDto {
  const _DownloadDocumentDto({required this.objectName, required this.expiresInSeconds});
  factory _DownloadDocumentDto.fromJson(Map<String, dynamic> json) => _$DownloadDocumentDtoFromJson(json);

@override final  String objectName;
@override final  int expiresInSeconds;

/// Create a copy of DownloadDocumentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadDocumentDtoCopyWith<_DownloadDocumentDto> get copyWith => __$DownloadDocumentDtoCopyWithImpl<_DownloadDocumentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DownloadDocumentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadDocumentDto&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.expiresInSeconds, expiresInSeconds) || other.expiresInSeconds == expiresInSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectName,expiresInSeconds);

@override
String toString() {
  return 'DownloadDocumentDto(objectName: $objectName, expiresInSeconds: $expiresInSeconds)';
}


}

/// @nodoc
abstract mixin class _$DownloadDocumentDtoCopyWith<$Res> implements $DownloadDocumentDtoCopyWith<$Res> {
  factory _$DownloadDocumentDtoCopyWith(_DownloadDocumentDto value, $Res Function(_DownloadDocumentDto) _then) = __$DownloadDocumentDtoCopyWithImpl;
@override @useResult
$Res call({
 String objectName, int expiresInSeconds
});




}
/// @nodoc
class __$DownloadDocumentDtoCopyWithImpl<$Res>
    implements _$DownloadDocumentDtoCopyWith<$Res> {
  __$DownloadDocumentDtoCopyWithImpl(this._self, this._then);

  final _DownloadDocumentDto _self;
  final $Res Function(_DownloadDocumentDto) _then;

/// Create a copy of DownloadDocumentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectName = null,Object? expiresInSeconds = null,}) {
  return _then(_DownloadDocumentDto(
objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,expiresInSeconds: null == expiresInSeconds ? _self.expiresInSeconds : expiresInSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
