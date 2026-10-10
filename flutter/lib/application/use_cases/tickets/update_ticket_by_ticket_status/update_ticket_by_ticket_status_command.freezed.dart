// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_ticket_by_ticket_status_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateTicketByTicketStatusCommand {

 String get id; String get ticketStatusId;
/// Create a copy of UpdateTicketByTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTicketByTicketStatusCommandCopyWith<UpdateTicketByTicketStatusCommand> get copyWith => _$UpdateTicketByTicketStatusCommandCopyWithImpl<UpdateTicketByTicketStatusCommand>(this as UpdateTicketByTicketStatusCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTicketByTicketStatusCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketStatusId, ticketStatusId) || other.ticketStatusId == ticketStatusId));
}


@override
int get hashCode => Object.hash(runtimeType,id,ticketStatusId);

@override
String toString() {
  return 'UpdateTicketByTicketStatusCommand(id: $id, ticketStatusId: $ticketStatusId)';
}


}

/// @nodoc
abstract mixin class $UpdateTicketByTicketStatusCommandCopyWith<$Res>  {
  factory $UpdateTicketByTicketStatusCommandCopyWith(UpdateTicketByTicketStatusCommand value, $Res Function(UpdateTicketByTicketStatusCommand) _then) = _$UpdateTicketByTicketStatusCommandCopyWithImpl;
@useResult
$Res call({
 String id, String ticketStatusId
});




}
/// @nodoc
class _$UpdateTicketByTicketStatusCommandCopyWithImpl<$Res>
    implements $UpdateTicketByTicketStatusCommandCopyWith<$Res> {
  _$UpdateTicketByTicketStatusCommandCopyWithImpl(this._self, this._then);

  final UpdateTicketByTicketStatusCommand _self;
  final $Res Function(UpdateTicketByTicketStatusCommand) _then;

/// Create a copy of UpdateTicketByTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketStatusId = null,}) {
  return _then(UpdateTicketByTicketStatusCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ticketStatusId: null == ticketStatusId ? _self.ticketStatusId : ticketStatusId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateTicketByTicketStatusCommand].
extension UpdateTicketByTicketStatusCommandPatterns on UpdateTicketByTicketStatusCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateTicketByTicketStatusCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateTicketByTicketStatusCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateTicketByTicketStatusCommand value)  $default,){
final _that = this;
switch (_that) {
case _UpdateTicketByTicketStatusCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateTicketByTicketStatusCommand value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateTicketByTicketStatusCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String ticketStatusId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateTicketByTicketStatusCommand() when $default != null:
return $default(_that.id,_that.ticketStatusId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String ticketStatusId)  $default,) {final _that = this;
switch (_that) {
case _UpdateTicketByTicketStatusCommand():
return $default(_that.id,_that.ticketStatusId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String ticketStatusId)?  $default,) {final _that = this;
switch (_that) {
case _UpdateTicketByTicketStatusCommand() when $default != null:
return $default(_that.id,_that.ticketStatusId);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateTicketByTicketStatusCommand implements UpdateTicketByTicketStatusCommand {
  const _UpdateTicketByTicketStatusCommand({required this.id, required this.ticketStatusId});
  

@override final  String id;
@override final  String ticketStatusId;

/// Create a copy of UpdateTicketByTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTicketByTicketStatusCommandCopyWith<_UpdateTicketByTicketStatusCommand> get copyWith => __$UpdateTicketByTicketStatusCommandCopyWithImpl<_UpdateTicketByTicketStatusCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTicketByTicketStatusCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketStatusId, ticketStatusId) || other.ticketStatusId == ticketStatusId));
}


@override
int get hashCode => Object.hash(runtimeType,id,ticketStatusId);

@override
String toString() {
  return 'UpdateTicketByTicketStatusCommand(id: $id, ticketStatusId: $ticketStatusId)';
}


}

/// @nodoc
abstract mixin class _$UpdateTicketByTicketStatusCommandCopyWith<$Res> implements $UpdateTicketByTicketStatusCommandCopyWith<$Res> {
  factory _$UpdateTicketByTicketStatusCommandCopyWith(_UpdateTicketByTicketStatusCommand value, $Res Function(_UpdateTicketByTicketStatusCommand) _then) = __$UpdateTicketByTicketStatusCommandCopyWithImpl;
@override @useResult
$Res call({
 String id, String ticketStatusId
});




}
/// @nodoc
class __$UpdateTicketByTicketStatusCommandCopyWithImpl<$Res>
    implements _$UpdateTicketByTicketStatusCommandCopyWith<$Res> {
  __$UpdateTicketByTicketStatusCommandCopyWithImpl(this._self, this._then);

  final _UpdateTicketByTicketStatusCommand _self;
  final $Res Function(_UpdateTicketByTicketStatusCommand) _then;

/// Create a copy of UpdateTicketByTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketStatusId = null,}) {
  return _then(_UpdateTicketByTicketStatusCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ticketStatusId: null == ticketStatusId ? _self.ticketStatusId : ticketStatusId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
