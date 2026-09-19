// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_user_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeleteUserCommand {

 String get id;
/// Create a copy of DeleteUserCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteUserCommandCopyWith<DeleteUserCommand> get copyWith => _$DeleteUserCommandCopyWithImpl<DeleteUserCommand>(this as DeleteUserCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserCommand&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteUserCommand(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteUserCommandCopyWith<$Res>  {
  factory $DeleteUserCommandCopyWith(DeleteUserCommand value, $Res Function(DeleteUserCommand) _then) = _$DeleteUserCommandCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteUserCommandCopyWithImpl<$Res>
    implements $DeleteUserCommandCopyWith<$Res> {
  _$DeleteUserCommandCopyWithImpl(this._self, this._then);

  final DeleteUserCommand _self;
  final $Res Function(DeleteUserCommand) _then;

/// Create a copy of DeleteUserCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(DeleteUserCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteUserCommand].
extension DeleteUserCommandPatterns on DeleteUserCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteUserCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteUserCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteUserCommand value)  $default,){
final _that = this;
switch (_that) {
case _DeleteUserCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteUserCommand value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteUserCommand() when $default != null:
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
case _DeleteUserCommand() when $default != null:
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
case _DeleteUserCommand():
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
case _DeleteUserCommand() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _DeleteUserCommand implements DeleteUserCommand {
  const _DeleteUserCommand({required this.id});
  

@override final  String id;

/// Create a copy of DeleteUserCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteUserCommandCopyWith<_DeleteUserCommand> get copyWith => __$DeleteUserCommandCopyWithImpl<_DeleteUserCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteUserCommand&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteUserCommand(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteUserCommandCopyWith<$Res> implements $DeleteUserCommandCopyWith<$Res> {
  factory _$DeleteUserCommandCopyWith(_DeleteUserCommand value, $Res Function(_DeleteUserCommand) _then) = __$DeleteUserCommandCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteUserCommandCopyWithImpl<$Res>
    implements _$DeleteUserCommandCopyWith<$Res> {
  __$DeleteUserCommandCopyWithImpl(this._self, this._then);

  final _DeleteUserCommand _self;
  final $Res Function(_DeleteUserCommand) _then;

/// Create a copy of DeleteUserCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteUserCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
