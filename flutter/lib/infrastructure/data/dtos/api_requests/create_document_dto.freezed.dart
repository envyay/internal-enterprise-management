// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_document_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateDocumentDto {

 String get referenceId; String get objectName; int get size; String get extension;
/// Create a copy of CreateDocumentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDocumentDtoCopyWith<CreateDocumentDto> get copyWith => _$CreateDocumentDtoCopyWithImpl<CreateDocumentDto>(this as CreateDocumentDto, _$identity);

  /// Serializes this CreateDocumentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDocumentDto&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.size, size) || other.size == size)&&(identical(other.extension, extension) || other.extension == extension));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referenceId,objectName,size,extension);

@override
String toString() {
  return 'CreateDocumentDto(referenceId: $referenceId, objectName: $objectName, size: $size, extension: $extension)';
}


}

/// @nodoc
abstract mixin class $CreateDocumentDtoCopyWith<$Res>  {
  factory $CreateDocumentDtoCopyWith(CreateDocumentDto value, $Res Function(CreateDocumentDto) _then) = _$CreateDocumentDtoCopyWithImpl;
@useResult
$Res call({
 String referenceId, String objectName, int size, String extension
});




}
/// @nodoc
class _$CreateDocumentDtoCopyWithImpl<$Res>
    implements $CreateDocumentDtoCopyWith<$Res> {
  _$CreateDocumentDtoCopyWithImpl(this._self, this._then);

  final CreateDocumentDto _self;
  final $Res Function(CreateDocumentDto) _then;

/// Create a copy of CreateDocumentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? referenceId = null,Object? objectName = null,Object? size = null,Object? extension = null,}) {
  return _then(CreateDocumentDto(
referenceId: null == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String,objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDocumentDto].
extension CreateDocumentDtoPatterns on CreateDocumentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDocumentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDocumentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDocumentDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateDocumentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDocumentDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDocumentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String referenceId,  String objectName,  int size,  String extension)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDocumentDto() when $default != null:
return $default(_that.referenceId,_that.objectName,_that.size,_that.extension);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String referenceId,  String objectName,  int size,  String extension)  $default,) {final _that = this;
switch (_that) {
case _CreateDocumentDto():
return $default(_that.referenceId,_that.objectName,_that.size,_that.extension);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String referenceId,  String objectName,  int size,  String extension)?  $default,) {final _that = this;
switch (_that) {
case _CreateDocumentDto() when $default != null:
return $default(_that.referenceId,_that.objectName,_that.size,_that.extension);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDocumentDto implements CreateDocumentDto {
  const _CreateDocumentDto({required this.referenceId, required this.objectName, required this.size, required this.extension});
  factory _CreateDocumentDto.fromJson(Map<String, dynamic> json) => _$CreateDocumentDtoFromJson(json);

@override final  String referenceId;
@override final  String objectName;
@override final  int size;
@override final  String extension;

/// Create a copy of CreateDocumentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDocumentDtoCopyWith<_CreateDocumentDto> get copyWith => __$CreateDocumentDtoCopyWithImpl<_CreateDocumentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDocumentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDocumentDto&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.size, size) || other.size == size)&&(identical(other.extension, extension) || other.extension == extension));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referenceId,objectName,size,extension);

@override
String toString() {
  return 'CreateDocumentDto(referenceId: $referenceId, objectName: $objectName, size: $size, extension: $extension)';
}


}

/// @nodoc
abstract mixin class _$CreateDocumentDtoCopyWith<$Res> implements $CreateDocumentDtoCopyWith<$Res> {
  factory _$CreateDocumentDtoCopyWith(_CreateDocumentDto value, $Res Function(_CreateDocumentDto) _then) = __$CreateDocumentDtoCopyWithImpl;
@override @useResult
$Res call({
 String referenceId, String objectName, int size, String extension
});




}
/// @nodoc
class __$CreateDocumentDtoCopyWithImpl<$Res>
    implements _$CreateDocumentDtoCopyWith<$Res> {
  __$CreateDocumentDtoCopyWithImpl(this._self, this._then);

  final _CreateDocumentDto _self;
  final $Res Function(_CreateDocumentDto) _then;

/// Create a copy of CreateDocumentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? referenceId = null,Object? objectName = null,Object? size = null,Object? extension = null,}) {
  return _then(_CreateDocumentDto(
referenceId: null == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String,objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
