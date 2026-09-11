// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_document_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateDocumentCommand {

 String get id; String get objectName;
/// Create a copy of UpdateDocumentCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDocumentCommandCopyWith<UpdateDocumentCommand> get copyWith => _$UpdateDocumentCommandCopyWithImpl<UpdateDocumentCommand>(this as UpdateDocumentCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDocumentCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.objectName, objectName) || other.objectName == objectName));
}


@override
int get hashCode => Object.hash(runtimeType,id,objectName);

@override
String toString() {
  return 'UpdateDocumentCommand(id: $id, objectName: $objectName)';
}


}

/// @nodoc
abstract mixin class $UpdateDocumentCommandCopyWith<$Res>  {
  factory $UpdateDocumentCommandCopyWith(UpdateDocumentCommand value, $Res Function(UpdateDocumentCommand) _then) = _$UpdateDocumentCommandCopyWithImpl;
@useResult
$Res call({
 String id, String objectName
});




}
/// @nodoc
class _$UpdateDocumentCommandCopyWithImpl<$Res>
    implements $UpdateDocumentCommandCopyWith<$Res> {
  _$UpdateDocumentCommandCopyWithImpl(this._self, this._then);

  final UpdateDocumentCommand _self;
  final $Res Function(UpdateDocumentCommand) _then;

/// Create a copy of UpdateDocumentCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? objectName = null,}) {
  return _then(UpdateDocumentCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDocumentCommand].
extension UpdateDocumentCommandPatterns on UpdateDocumentCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDocumentCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDocumentCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDocumentCommand value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDocumentCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDocumentCommand value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDocumentCommand() when $default != null:
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
case _UpdateDocumentCommand() when $default != null:
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
case _UpdateDocumentCommand():
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
case _UpdateDocumentCommand() when $default != null:
return $default(_that.id,_that.objectName);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateDocumentCommand implements UpdateDocumentCommand {
  const _UpdateDocumentCommand({required this.id, required this.objectName});
  

@override final  String id;
@override final  String objectName;

/// Create a copy of UpdateDocumentCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDocumentCommandCopyWith<_UpdateDocumentCommand> get copyWith => __$UpdateDocumentCommandCopyWithImpl<_UpdateDocumentCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDocumentCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.objectName, objectName) || other.objectName == objectName));
}


@override
int get hashCode => Object.hash(runtimeType,id,objectName);

@override
String toString() {
  return 'UpdateDocumentCommand(id: $id, objectName: $objectName)';
}


}

/// @nodoc
abstract mixin class _$UpdateDocumentCommandCopyWith<$Res> implements $UpdateDocumentCommandCopyWith<$Res> {
  factory _$UpdateDocumentCommandCopyWith(_UpdateDocumentCommand value, $Res Function(_UpdateDocumentCommand) _then) = __$UpdateDocumentCommandCopyWithImpl;
@override @useResult
$Res call({
 String id, String objectName
});




}
/// @nodoc
class __$UpdateDocumentCommandCopyWithImpl<$Res>
    implements _$UpdateDocumentCommandCopyWith<$Res> {
  __$UpdateDocumentCommandCopyWithImpl(this._self, this._then);

  final _UpdateDocumentCommand _self;
  final $Res Function(_UpdateDocumentCommand) _then;

/// Create a copy of UpdateDocumentCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? objectName = null,}) {
  return _then(_UpdateDocumentCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
