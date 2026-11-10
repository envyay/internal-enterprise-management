// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_document_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadDocumentQuery {

 String get objectName; int get expiresInSeconds;
/// Create a copy of DownloadDocumentQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadDocumentQueryCopyWith<DownloadDocumentQuery> get copyWith => _$DownloadDocumentQueryCopyWithImpl<DownloadDocumentQuery>(this as DownloadDocumentQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadDocumentQuery&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.expiresInSeconds, expiresInSeconds) || other.expiresInSeconds == expiresInSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,objectName,expiresInSeconds);

@override
String toString() {
  return 'DownloadDocumentQuery(objectName: $objectName, expiresInSeconds: $expiresInSeconds)';
}


}

/// @nodoc
abstract mixin class $DownloadDocumentQueryCopyWith<$Res>  {
  factory $DownloadDocumentQueryCopyWith(DownloadDocumentQuery value, $Res Function(DownloadDocumentQuery) _then) = _$DownloadDocumentQueryCopyWithImpl;
@useResult
$Res call({
 String objectName, int expiresInSeconds
});




}
/// @nodoc
class _$DownloadDocumentQueryCopyWithImpl<$Res>
    implements $DownloadDocumentQueryCopyWith<$Res> {
  _$DownloadDocumentQueryCopyWithImpl(this._self, this._then);

  final DownloadDocumentQuery _self;
  final $Res Function(DownloadDocumentQuery) _then;

/// Create a copy of DownloadDocumentQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectName = null,Object? expiresInSeconds = null,}) {
  return _then(DownloadDocumentQuery(
objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,expiresInSeconds: null == expiresInSeconds ? _self.expiresInSeconds : expiresInSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DownloadDocumentQuery].
extension DownloadDocumentQueryPatterns on DownloadDocumentQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DownloadDocumentQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DownloadDocumentQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DownloadDocumentQuery value)  $default,){
final _that = this;
switch (_that) {
case _DownloadDocumentQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DownloadDocumentQuery value)?  $default,){
final _that = this;
switch (_that) {
case _DownloadDocumentQuery() when $default != null:
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
case _DownloadDocumentQuery() when $default != null:
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
case _DownloadDocumentQuery():
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
case _DownloadDocumentQuery() when $default != null:
return $default(_that.objectName,_that.expiresInSeconds);case _:
  return null;

}
}

}

/// @nodoc


class _DownloadDocumentQuery implements DownloadDocumentQuery {
  const _DownloadDocumentQuery({required this.objectName, required this.expiresInSeconds});
  

@override final  String objectName;
@override final  int expiresInSeconds;

/// Create a copy of DownloadDocumentQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadDocumentQueryCopyWith<_DownloadDocumentQuery> get copyWith => __$DownloadDocumentQueryCopyWithImpl<_DownloadDocumentQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadDocumentQuery&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.expiresInSeconds, expiresInSeconds) || other.expiresInSeconds == expiresInSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,objectName,expiresInSeconds);

@override
String toString() {
  return 'DownloadDocumentQuery(objectName: $objectName, expiresInSeconds: $expiresInSeconds)';
}


}

/// @nodoc
abstract mixin class _$DownloadDocumentQueryCopyWith<$Res> implements $DownloadDocumentQueryCopyWith<$Res> {
  factory _$DownloadDocumentQueryCopyWith(_DownloadDocumentQuery value, $Res Function(_DownloadDocumentQuery) _then) = __$DownloadDocumentQueryCopyWithImpl;
@override @useResult
$Res call({
 String objectName, int expiresInSeconds
});




}
/// @nodoc
class __$DownloadDocumentQueryCopyWithImpl<$Res>
    implements _$DownloadDocumentQueryCopyWith<$Res> {
  __$DownloadDocumentQueryCopyWithImpl(this._self, this._then);

  final _DownloadDocumentQuery _self;
  final $Res Function(_DownloadDocumentQuery) _then;

/// Create a copy of DownloadDocumentQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectName = null,Object? expiresInSeconds = null,}) {
  return _then(_DownloadDocumentQuery(
objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,expiresInSeconds: null == expiresInSeconds ? _self.expiresInSeconds : expiresInSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
