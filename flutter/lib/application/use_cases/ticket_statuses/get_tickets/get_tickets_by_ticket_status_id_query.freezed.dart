// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_tickets_by_ticket_status_id_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetTicketsByTicketStatusIdQuery {

 String get ticketStatusId;
/// Create a copy of GetTicketsByTicketStatusIdQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTicketsByTicketStatusIdQueryCopyWith<GetTicketsByTicketStatusIdQuery> get copyWith => _$GetTicketsByTicketStatusIdQueryCopyWithImpl<GetTicketsByTicketStatusIdQuery>(this as GetTicketsByTicketStatusIdQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTicketsByTicketStatusIdQuery&&(identical(other.ticketStatusId, ticketStatusId) || other.ticketStatusId == ticketStatusId));
}


@override
int get hashCode => Object.hash(runtimeType,ticketStatusId);

@override
String toString() {
  return 'GetTicketsByTicketStatusIdQuery(ticketStatusId: $ticketStatusId)';
}


}

/// @nodoc
abstract mixin class $GetTicketsByTicketStatusIdQueryCopyWith<$Res>  {
  factory $GetTicketsByTicketStatusIdQueryCopyWith(GetTicketsByTicketStatusIdQuery value, $Res Function(GetTicketsByTicketStatusIdQuery) _then) = _$GetTicketsByTicketStatusIdQueryCopyWithImpl;
@useResult
$Res call({
 String ticketStatusId
});




}
/// @nodoc
class _$GetTicketsByTicketStatusIdQueryCopyWithImpl<$Res>
    implements $GetTicketsByTicketStatusIdQueryCopyWith<$Res> {
  _$GetTicketsByTicketStatusIdQueryCopyWithImpl(this._self, this._then);

  final GetTicketsByTicketStatusIdQuery _self;
  final $Res Function(GetTicketsByTicketStatusIdQuery) _then;

/// Create a copy of GetTicketsByTicketStatusIdQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketStatusId = null,}) {
  return _then(GetTicketsByTicketStatusIdQuery(
ticketStatusId: null == ticketStatusId ? _self.ticketStatusId : ticketStatusId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetTicketsByTicketStatusIdQuery].
extension GetTicketsByTicketStatusIdQueryPatterns on GetTicketsByTicketStatusIdQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetTicketsByTicketStatusIdQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTicketsByTicketStatusIdQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetTicketsByTicketStatusIdQuery value)  $default,){
final _that = this;
switch (_that) {
case _GetTicketsByTicketStatusIdQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetTicketsByTicketStatusIdQuery value)?  $default,){
final _that = this;
switch (_that) {
case _GetTicketsByTicketStatusIdQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ticketStatusId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTicketsByTicketStatusIdQuery() when $default != null:
return $default(_that.ticketStatusId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ticketStatusId)  $default,) {final _that = this;
switch (_that) {
case _GetTicketsByTicketStatusIdQuery():
return $default(_that.ticketStatusId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ticketStatusId)?  $default,) {final _that = this;
switch (_that) {
case _GetTicketsByTicketStatusIdQuery() when $default != null:
return $default(_that.ticketStatusId);case _:
  return null;

}
}

}

/// @nodoc


class _GetTicketsByTicketStatusIdQuery implements GetTicketsByTicketStatusIdQuery {
  const _GetTicketsByTicketStatusIdQuery({required this.ticketStatusId});
  

@override final  String ticketStatusId;

/// Create a copy of GetTicketsByTicketStatusIdQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTicketsByTicketStatusIdQueryCopyWith<_GetTicketsByTicketStatusIdQuery> get copyWith => __$GetTicketsByTicketStatusIdQueryCopyWithImpl<_GetTicketsByTicketStatusIdQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTicketsByTicketStatusIdQuery&&(identical(other.ticketStatusId, ticketStatusId) || other.ticketStatusId == ticketStatusId));
}


@override
int get hashCode => Object.hash(runtimeType,ticketStatusId);

@override
String toString() {
  return 'GetTicketsByTicketStatusIdQuery(ticketStatusId: $ticketStatusId)';
}


}

/// @nodoc
abstract mixin class _$GetTicketsByTicketStatusIdQueryCopyWith<$Res> implements $GetTicketsByTicketStatusIdQueryCopyWith<$Res> {
  factory _$GetTicketsByTicketStatusIdQueryCopyWith(_GetTicketsByTicketStatusIdQuery value, $Res Function(_GetTicketsByTicketStatusIdQuery) _then) = __$GetTicketsByTicketStatusIdQueryCopyWithImpl;
@override @useResult
$Res call({
 String ticketStatusId
});




}
/// @nodoc
class __$GetTicketsByTicketStatusIdQueryCopyWithImpl<$Res>
    implements _$GetTicketsByTicketStatusIdQueryCopyWith<$Res> {
  __$GetTicketsByTicketStatusIdQueryCopyWithImpl(this._self, this._then);

  final _GetTicketsByTicketStatusIdQuery _self;
  final $Res Function(_GetTicketsByTicketStatusIdQuery) _then;

/// Create a copy of GetTicketsByTicketStatusIdQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketStatusId = null,}) {
  return _then(_GetTicketsByTicketStatusIdQuery(
ticketStatusId: null == ticketStatusId ? _self.ticketStatusId : ticketStatusId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
