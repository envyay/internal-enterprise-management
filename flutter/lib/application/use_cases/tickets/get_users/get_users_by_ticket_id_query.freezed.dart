// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_users_by_ticket_id_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetUsersByTicketIdQuery {

 String get ticketId;
/// Create a copy of GetUsersByTicketIdQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUsersByTicketIdQueryCopyWith<GetUsersByTicketIdQuery> get copyWith => _$GetUsersByTicketIdQueryCopyWithImpl<GetUsersByTicketIdQuery>(this as GetUsersByTicketIdQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUsersByTicketIdQuery&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId);

@override
String toString() {
  return 'GetUsersByTicketIdQuery(ticketId: $ticketId)';
}


}

/// @nodoc
abstract mixin class $GetUsersByTicketIdQueryCopyWith<$Res>  {
  factory $GetUsersByTicketIdQueryCopyWith(GetUsersByTicketIdQuery value, $Res Function(GetUsersByTicketIdQuery) _then) = _$GetUsersByTicketIdQueryCopyWithImpl;
@useResult
$Res call({
 String ticketId
});




}
/// @nodoc
class _$GetUsersByTicketIdQueryCopyWithImpl<$Res>
    implements $GetUsersByTicketIdQueryCopyWith<$Res> {
  _$GetUsersByTicketIdQueryCopyWithImpl(this._self, this._then);

  final GetUsersByTicketIdQuery _self;
  final $Res Function(GetUsersByTicketIdQuery) _then;

/// Create a copy of GetUsersByTicketIdQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,}) {
  return _then(GetUsersByTicketIdQuery(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetUsersByTicketIdQuery].
extension GetUsersByTicketIdQueryPatterns on GetUsersByTicketIdQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetUsersByTicketIdQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUsersByTicketIdQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetUsersByTicketIdQuery value)  $default,){
final _that = this;
switch (_that) {
case _GetUsersByTicketIdQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetUsersByTicketIdQuery value)?  $default,){
final _that = this;
switch (_that) {
case _GetUsersByTicketIdQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ticketId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetUsersByTicketIdQuery() when $default != null:
return $default(_that.ticketId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ticketId)  $default,) {final _that = this;
switch (_that) {
case _GetUsersByTicketIdQuery():
return $default(_that.ticketId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ticketId)?  $default,) {final _that = this;
switch (_that) {
case _GetUsersByTicketIdQuery() when $default != null:
return $default(_that.ticketId);case _:
  return null;

}
}

}

/// @nodoc


class _GetUsersByTicketIdQuery implements GetUsersByTicketIdQuery {
  const _GetUsersByTicketIdQuery({required this.ticketId});
  

@override final  String ticketId;

/// Create a copy of GetUsersByTicketIdQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUsersByTicketIdQueryCopyWith<_GetUsersByTicketIdQuery> get copyWith => __$GetUsersByTicketIdQueryCopyWithImpl<_GetUsersByTicketIdQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUsersByTicketIdQuery&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId);

@override
String toString() {
  return 'GetUsersByTicketIdQuery(ticketId: $ticketId)';
}


}

/// @nodoc
abstract mixin class _$GetUsersByTicketIdQueryCopyWith<$Res> implements $GetUsersByTicketIdQueryCopyWith<$Res> {
  factory _$GetUsersByTicketIdQueryCopyWith(_GetUsersByTicketIdQuery value, $Res Function(_GetUsersByTicketIdQuery) _then) = __$GetUsersByTicketIdQueryCopyWithImpl;
@override @useResult
$Res call({
 String ticketId
});




}
/// @nodoc
class __$GetUsersByTicketIdQueryCopyWithImpl<$Res>
    implements _$GetUsersByTicketIdQueryCopyWith<$Res> {
  __$GetUsersByTicketIdQueryCopyWithImpl(this._self, this._then);

  final _GetUsersByTicketIdQuery _self;
  final $Res Function(_GetUsersByTicketIdQuery) _then;

/// Create a copy of GetUsersByTicketIdQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,}) {
  return _then(_GetUsersByTicketIdQuery(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
