// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadFilesCommand {

 List<Document> get files; String get referenceId; int get referenceType;
/// Create a copy of UploadFilesCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadFilesCommandCopyWith<UploadFilesCommand> get copyWith => _$UploadFilesCommandCopyWithImpl<UploadFilesCommand>(this as UploadFilesCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadFilesCommand&&const DeepCollectionEquality().equals(other.files, files)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(files),referenceId,referenceType);

@override
String toString() {
  return 'UploadFilesCommand(files: $files, referenceId: $referenceId, referenceType: $referenceType)';
}


}

/// @nodoc
abstract mixin class $UploadFilesCommandCopyWith<$Res>  {
  factory $UploadFilesCommandCopyWith(UploadFilesCommand value, $Res Function(UploadFilesCommand) _then) = _$UploadFilesCommandCopyWithImpl;
@useResult
$Res call({
 List<Document> files, String referenceId, int referenceType
});




}
/// @nodoc
class _$UploadFilesCommandCopyWithImpl<$Res>
    implements $UploadFilesCommandCopyWith<$Res> {
  _$UploadFilesCommandCopyWithImpl(this._self, this._then);

  final UploadFilesCommand _self;
  final $Res Function(UploadFilesCommand) _then;

/// Create a copy of UploadFilesCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? files = null,Object? referenceId = null,Object? referenceType = null,}) {
  return _then(UploadFilesCommand(
files: null == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<Document>,referenceId: null == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String,referenceType: null == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadFilesCommand].
extension UploadFilesCommandPatterns on UploadFilesCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadFilesCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadFilesCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadFilesCommand value)  $default,){
final _that = this;
switch (_that) {
case _UploadFilesCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadFilesCommand value)?  $default,){
final _that = this;
switch (_that) {
case _UploadFilesCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Document> files,  String referenceId,  int referenceType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadFilesCommand() when $default != null:
return $default(_that.files,_that.referenceId,_that.referenceType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Document> files,  String referenceId,  int referenceType)  $default,) {final _that = this;
switch (_that) {
case _UploadFilesCommand():
return $default(_that.files,_that.referenceId,_that.referenceType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Document> files,  String referenceId,  int referenceType)?  $default,) {final _that = this;
switch (_that) {
case _UploadFilesCommand() when $default != null:
return $default(_that.files,_that.referenceId,_that.referenceType);case _:
  return null;

}
}

}

/// @nodoc


class _UploadFilesCommand implements UploadFilesCommand {
  const _UploadFilesCommand({required  List<Document> files, required this.referenceId, required this.referenceType}): _files = files;
  

 final  List<Document> _files;
@override List<Document> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}

@override final  String referenceId;
@override final  int referenceType;

/// Create a copy of UploadFilesCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadFilesCommandCopyWith<_UploadFilesCommand> get copyWith => __$UploadFilesCommandCopyWithImpl<_UploadFilesCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadFilesCommand&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_files),referenceId,referenceType);

@override
String toString() {
  return 'UploadFilesCommand(files: $files, referenceId: $referenceId, referenceType: $referenceType)';
}


}

/// @nodoc
abstract mixin class _$UploadFilesCommandCopyWith<$Res> implements $UploadFilesCommandCopyWith<$Res> {
  factory _$UploadFilesCommandCopyWith(_UploadFilesCommand value, $Res Function(_UploadFilesCommand) _then) = __$UploadFilesCommandCopyWithImpl;
@override @useResult
$Res call({
 List<Document> files, String referenceId, int referenceType
});




}
/// @nodoc
class __$UploadFilesCommandCopyWithImpl<$Res>
    implements _$UploadFilesCommandCopyWith<$Res> {
  __$UploadFilesCommandCopyWithImpl(this._self, this._then);

  final _UploadFilesCommand _self;
  final $Res Function(_UploadFilesCommand) _then;

/// Create a copy of UploadFilesCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? files = null,Object? referenceId = null,Object? referenceType = null,}) {
  return _then(_UploadFilesCommand(
files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<Document>,referenceId: null == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String,referenceType: null == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
