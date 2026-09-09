// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_ticket_status_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeleteTicketStatusCommand {

 String get id;
/// Create a copy of DeleteTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTicketStatusCommandCopyWith<DeleteTicketStatusCommand> get copyWith => _$DeleteTicketStatusCommandCopyWithImpl<DeleteTicketStatusCommand>(this as DeleteTicketStatusCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTicketStatusCommand&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteTicketStatusCommand(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteTicketStatusCommandCopyWith<$Res>  {
  factory $DeleteTicketStatusCommandCopyWith(DeleteTicketStatusCommand value, $Res Function(DeleteTicketStatusCommand) _then) = _$DeleteTicketStatusCommandCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteTicketStatusCommandCopyWithImpl<$Res>
    implements $DeleteTicketStatusCommandCopyWith<$Res> {
  _$DeleteTicketStatusCommandCopyWithImpl(this._self, this._then);

  final DeleteTicketStatusCommand _self;
  final $Res Function(DeleteTicketStatusCommand) _then;

/// Create a copy of DeleteTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(DeleteTicketStatusCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteTicketStatusCommand].
extension DeleteTicketStatusCommandPatterns on DeleteTicketStatusCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteTicketStatusCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteTicketStatusCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteTicketStatusCommand value)  $default,){
final _that = this;
switch (_that) {
case _DeleteTicketStatusCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteTicketStatusCommand value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteTicketStatusCommand() when $default != null:
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
case _DeleteTicketStatusCommand() when $default != null:
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
case _DeleteTicketStatusCommand():
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
case _DeleteTicketStatusCommand() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _DeleteTicketStatusCommand implements DeleteTicketStatusCommand {
  const _DeleteTicketStatusCommand({required this.id});
  

@override final  String id;

/// Create a copy of DeleteTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTicketStatusCommandCopyWith<_DeleteTicketStatusCommand> get copyWith => __$DeleteTicketStatusCommandCopyWithImpl<_DeleteTicketStatusCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTicketStatusCommand&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteTicketStatusCommand(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteTicketStatusCommandCopyWith<$Res> implements $DeleteTicketStatusCommandCopyWith<$Res> {
  factory _$DeleteTicketStatusCommandCopyWith(_DeleteTicketStatusCommand value, $Res Function(_DeleteTicketStatusCommand) _then) = __$DeleteTicketStatusCommandCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteTicketStatusCommandCopyWithImpl<$Res>
    implements _$DeleteTicketStatusCommandCopyWith<$Res> {
  __$DeleteTicketStatusCommandCopyWithImpl(this._self, this._then);

  final _DeleteTicketStatusCommand _self;
  final $Res Function(_DeleteTicketStatusCommand) _then;

/// Create a copy of DeleteTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteTicketStatusCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
