// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_project_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeleteProjectCommand {

 String get id;
/// Create a copy of DeleteProjectCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteProjectCommandCopyWith<DeleteProjectCommand> get copyWith => _$DeleteProjectCommandCopyWithImpl<DeleteProjectCommand>(this as DeleteProjectCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteProjectCommand&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteProjectCommand(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteProjectCommandCopyWith<$Res>  {
  factory $DeleteProjectCommandCopyWith(DeleteProjectCommand value, $Res Function(DeleteProjectCommand) _then) = _$DeleteProjectCommandCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteProjectCommandCopyWithImpl<$Res>
    implements $DeleteProjectCommandCopyWith<$Res> {
  _$DeleteProjectCommandCopyWithImpl(this._self, this._then);

  final DeleteProjectCommand _self;
  final $Res Function(DeleteProjectCommand) _then;

/// Create a copy of DeleteProjectCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(DeleteProjectCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteProjectCommand].
extension DeleteProjectCommandPatterns on DeleteProjectCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteProjectCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteProjectCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteProjectCommand value)  $default,){
final _that = this;
switch (_that) {
case _DeleteProjectCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteProjectCommand value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteProjectCommand() when $default != null:
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
case _DeleteProjectCommand() when $default != null:
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
case _DeleteProjectCommand():
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
case _DeleteProjectCommand() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _DeleteProjectCommand implements DeleteProjectCommand {
  const _DeleteProjectCommand({required this.id});
  

@override final  String id;

/// Create a copy of DeleteProjectCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteProjectCommandCopyWith<_DeleteProjectCommand> get copyWith => __$DeleteProjectCommandCopyWithImpl<_DeleteProjectCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteProjectCommand&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteProjectCommand(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteProjectCommandCopyWith<$Res> implements $DeleteProjectCommandCopyWith<$Res> {
  factory _$DeleteProjectCommandCopyWith(_DeleteProjectCommand value, $Res Function(_DeleteProjectCommand) _then) = __$DeleteProjectCommandCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteProjectCommandCopyWithImpl<$Res>
    implements _$DeleteProjectCommandCopyWith<$Res> {
  __$DeleteProjectCommandCopyWithImpl(this._self, this._then);

  final _DeleteProjectCommand _self;
  final $Res Function(_DeleteProjectCommand) _then;

/// Create a copy of DeleteProjectCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteProjectCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
