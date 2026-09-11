// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_document_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateDocumentCommand {

 String get referenceId; String get objectName; int get size; String get extension;
/// Create a copy of CreateDocumentCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDocumentCommandCopyWith<CreateDocumentCommand> get copyWith => _$CreateDocumentCommandCopyWithImpl<CreateDocumentCommand>(this as CreateDocumentCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDocumentCommand&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.size, size) || other.size == size)&&(identical(other.extension, extension) || other.extension == extension));
}


@override
int get hashCode => Object.hash(runtimeType,referenceId,objectName,size,extension);

@override
String toString() {
  return 'CreateDocumentCommand(referenceId: $referenceId, objectName: $objectName, size: $size, extension: $extension)';
}


}

/// @nodoc
abstract mixin class $CreateDocumentCommandCopyWith<$Res>  {
  factory $CreateDocumentCommandCopyWith(CreateDocumentCommand value, $Res Function(CreateDocumentCommand) _then) = _$CreateDocumentCommandCopyWithImpl;
@useResult
$Res call({
 String referenceId, String objectName, int size, String extension
});




}
/// @nodoc
class _$CreateDocumentCommandCopyWithImpl<$Res>
    implements $CreateDocumentCommandCopyWith<$Res> {
  _$CreateDocumentCommandCopyWithImpl(this._self, this._then);

  final CreateDocumentCommand _self;
  final $Res Function(CreateDocumentCommand) _then;

/// Create a copy of CreateDocumentCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? referenceId = null,Object? objectName = null,Object? size = null,Object? extension = null,}) {
  return _then(CreateDocumentCommand(
referenceId: null == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String,objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDocumentCommand].
extension CreateDocumentCommandPatterns on CreateDocumentCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDocumentCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDocumentCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDocumentCommand value)  $default,){
final _that = this;
switch (_that) {
case _CreateDocumentCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDocumentCommand value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDocumentCommand() when $default != null:
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
case _CreateDocumentCommand() when $default != null:
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
case _CreateDocumentCommand():
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
case _CreateDocumentCommand() when $default != null:
return $default(_that.referenceId,_that.objectName,_that.size,_that.extension);case _:
  return null;

}
}

}

/// @nodoc


class _CreateDocumentCommand implements CreateDocumentCommand {
  const _CreateDocumentCommand({required this.referenceId, required this.objectName, required this.size, required this.extension});
  

@override final  String referenceId;
@override final  String objectName;
@override final  int size;
@override final  String extension;

/// Create a copy of CreateDocumentCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDocumentCommandCopyWith<_CreateDocumentCommand> get copyWith => __$CreateDocumentCommandCopyWithImpl<_CreateDocumentCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDocumentCommand&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.size, size) || other.size == size)&&(identical(other.extension, extension) || other.extension == extension));
}


@override
int get hashCode => Object.hash(runtimeType,referenceId,objectName,size,extension);

@override
String toString() {
  return 'CreateDocumentCommand(referenceId: $referenceId, objectName: $objectName, size: $size, extension: $extension)';
}


}

/// @nodoc
abstract mixin class _$CreateDocumentCommandCopyWith<$Res> implements $CreateDocumentCommandCopyWith<$Res> {
  factory _$CreateDocumentCommandCopyWith(_CreateDocumentCommand value, $Res Function(_CreateDocumentCommand) _then) = __$CreateDocumentCommandCopyWithImpl;
@override @useResult
$Res call({
 String referenceId, String objectName, int size, String extension
});




}
/// @nodoc
class __$CreateDocumentCommandCopyWithImpl<$Res>
    implements _$CreateDocumentCommandCopyWith<$Res> {
  __$CreateDocumentCommandCopyWithImpl(this._self, this._then);

  final _CreateDocumentCommand _self;
  final $Res Function(_CreateDocumentCommand) _then;

/// Create a copy of CreateDocumentCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? referenceId = null,Object? objectName = null,Object? size = null,Object? extension = null,}) {
  return _then(_CreateDocumentCommand(
referenceId: null == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String,objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
