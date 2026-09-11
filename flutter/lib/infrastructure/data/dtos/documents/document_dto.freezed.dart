// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocumentDto {

 String get id; String get referenceId; String get bucketName; String get objectName; int get size; int get status; String get extension; UserDto get creator; UserDto get updater;
/// Create a copy of DocumentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentDtoCopyWith<DocumentDto> get copyWith => _$DocumentDtoCopyWithImpl<DocumentDto>(this as DocumentDto, _$identity);

  /// Serializes this DocumentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.bucketName, bucketName) || other.bucketName == bucketName)&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.size, size) || other.size == size)&&(identical(other.status, status) || other.status == status)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.creator, creator) || other.creator == creator)&&(identical(other.updater, updater) || other.updater == updater));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,referenceId,bucketName,objectName,size,status,extension,creator,updater);

@override
String toString() {
  return 'DocumentDto(id: $id, referenceId: $referenceId, bucketName: $bucketName, objectName: $objectName, size: $size, status: $status, extension: $extension, creator: $creator, updater: $updater)';
}


}

/// @nodoc
abstract mixin class $DocumentDtoCopyWith<$Res>  {
  factory $DocumentDtoCopyWith(DocumentDto value, $Res Function(DocumentDto) _then) = _$DocumentDtoCopyWithImpl;
@useResult
$Res call({
 String id, String referenceId, String bucketName, String objectName, int size, int status, String extension, UserDto creator, UserDto updater
});


$UserDtoCopyWith<$Res> get creator;$UserDtoCopyWith<$Res> get updater;

}
/// @nodoc
class _$DocumentDtoCopyWithImpl<$Res>
    implements $DocumentDtoCopyWith<$Res> {
  _$DocumentDtoCopyWithImpl(this._self, this._then);

  final DocumentDto _self;
  final $Res Function(DocumentDto) _then;

/// Create a copy of DocumentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? referenceId = null,Object? bucketName = null,Object? objectName = null,Object? size = null,Object? status = null,Object? extension = null,Object? creator = null,Object? updater = null,}) {
  return _then(DocumentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,referenceId: null == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String,bucketName: null == bucketName ? _self.bucketName : bucketName // ignore: cast_nullable_to_non_nullable
as String,objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,creator: null == creator ? _self.creator : creator // ignore: cast_nullable_to_non_nullable
as UserDto,updater: null == updater ? _self.updater : updater // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}
/// Create a copy of DocumentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get creator {
  
  return $UserDtoCopyWith<$Res>(_self.creator, (value) {
    return _then(_self.copyWith(creator: value));
  });
}/// Create a copy of DocumentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get updater {
  
  return $UserDtoCopyWith<$Res>(_self.updater, (value) {
    return _then(_self.copyWith(updater: value));
  });
}
}


/// Adds pattern-matching-related methods to [DocumentDto].
extension DocumentDtoPatterns on DocumentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentDto value)  $default,){
final _that = this;
switch (_that) {
case _DocumentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentDto value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String referenceId,  String bucketName,  String objectName,  int size,  int status,  String extension,  UserDto creator,  UserDto updater)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentDto() when $default != null:
return $default(_that.id,_that.referenceId,_that.bucketName,_that.objectName,_that.size,_that.status,_that.extension,_that.creator,_that.updater);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String referenceId,  String bucketName,  String objectName,  int size,  int status,  String extension,  UserDto creator,  UserDto updater)  $default,) {final _that = this;
switch (_that) {
case _DocumentDto():
return $default(_that.id,_that.referenceId,_that.bucketName,_that.objectName,_that.size,_that.status,_that.extension,_that.creator,_that.updater);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String referenceId,  String bucketName,  String objectName,  int size,  int status,  String extension,  UserDto creator,  UserDto updater)?  $default,) {final _that = this;
switch (_that) {
case _DocumentDto() when $default != null:
return $default(_that.id,_that.referenceId,_that.bucketName,_that.objectName,_that.size,_that.status,_that.extension,_that.creator,_that.updater);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentDto implements DocumentDto {
  const _DocumentDto({required this.id, required this.referenceId, required this.bucketName, required this.objectName, required this.size, required this.status, required this.extension, required this.creator, required this.updater});
  factory _DocumentDto.fromJson(Map<String, dynamic> json) => _$DocumentDtoFromJson(json);

@override final  String id;
@override final  String referenceId;
@override final  String bucketName;
@override final  String objectName;
@override final  int size;
@override final  int status;
@override final  String extension;
@override final  UserDto creator;
@override final  UserDto updater;

/// Create a copy of DocumentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentDtoCopyWith<_DocumentDto> get copyWith => __$DocumentDtoCopyWithImpl<_DocumentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.bucketName, bucketName) || other.bucketName == bucketName)&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.size, size) || other.size == size)&&(identical(other.status, status) || other.status == status)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.creator, creator) || other.creator == creator)&&(identical(other.updater, updater) || other.updater == updater));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,referenceId,bucketName,objectName,size,status,extension,creator,updater);

@override
String toString() {
  return 'DocumentDto(id: $id, referenceId: $referenceId, bucketName: $bucketName, objectName: $objectName, size: $size, status: $status, extension: $extension, creator: $creator, updater: $updater)';
}


}

/// @nodoc
abstract mixin class _$DocumentDtoCopyWith<$Res> implements $DocumentDtoCopyWith<$Res> {
  factory _$DocumentDtoCopyWith(_DocumentDto value, $Res Function(_DocumentDto) _then) = __$DocumentDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String referenceId, String bucketName, String objectName, int size, int status, String extension, UserDto creator, UserDto updater
});


@override $UserDtoCopyWith<$Res> get creator;@override $UserDtoCopyWith<$Res> get updater;

}
/// @nodoc
class __$DocumentDtoCopyWithImpl<$Res>
    implements _$DocumentDtoCopyWith<$Res> {
  __$DocumentDtoCopyWithImpl(this._self, this._then);

  final _DocumentDto _self;
  final $Res Function(_DocumentDto) _then;

/// Create a copy of DocumentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? referenceId = null,Object? bucketName = null,Object? objectName = null,Object? size = null,Object? status = null,Object? extension = null,Object? creator = null,Object? updater = null,}) {
  return _then(_DocumentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,referenceId: null == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String,bucketName: null == bucketName ? _self.bucketName : bucketName // ignore: cast_nullable_to_non_nullable
as String,objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,creator: null == creator ? _self.creator : creator // ignore: cast_nullable_to_non_nullable
as UserDto,updater: null == updater ? _self.updater : updater // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}

/// Create a copy of DocumentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get creator {
  
  return $UserDtoCopyWith<$Res>(_self.creator, (value) {
    return _then(_self.copyWith(creator: value));
  });
}/// Create a copy of DocumentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get updater {
  
  return $UserDtoCopyWith<$Res>(_self.updater, (value) {
    return _then(_self.copyWith(updater: value));
  });
}
}

// dart format on
