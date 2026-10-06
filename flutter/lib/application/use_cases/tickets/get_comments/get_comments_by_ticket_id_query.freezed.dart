// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_comments_by_ticket_id_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetCommentsByTicketIdQuery {

 String get ticketId;
/// Create a copy of GetCommentsByTicketIdQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCommentsByTicketIdQueryCopyWith<GetCommentsByTicketIdQuery> get copyWith => _$GetCommentsByTicketIdQueryCopyWithImpl<GetCommentsByTicketIdQuery>(this as GetCommentsByTicketIdQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCommentsByTicketIdQuery&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId);

@override
String toString() {
  return 'GetCommentsByTicketIdQuery(ticketId: $ticketId)';
}


}

/// @nodoc
abstract mixin class $GetCommentsByTicketIdQueryCopyWith<$Res>  {
  factory $GetCommentsByTicketIdQueryCopyWith(GetCommentsByTicketIdQuery value, $Res Function(GetCommentsByTicketIdQuery) _then) = _$GetCommentsByTicketIdQueryCopyWithImpl;
@useResult
$Res call({
 String ticketId
});




}
/// @nodoc
class _$GetCommentsByTicketIdQueryCopyWithImpl<$Res>
    implements $GetCommentsByTicketIdQueryCopyWith<$Res> {
  _$GetCommentsByTicketIdQueryCopyWithImpl(this._self, this._then);

  final GetCommentsByTicketIdQuery _self;
  final $Res Function(GetCommentsByTicketIdQuery) _then;

/// Create a copy of GetCommentsByTicketIdQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,}) {
  return _then(GetCommentsByTicketIdQuery(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetCommentsByTicketIdQuery].
extension GetCommentsByTicketIdQueryPatterns on GetCommentsByTicketIdQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetCommentsByTicketIdQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCommentsByTicketIdQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetCommentsByTicketIdQuery value)  $default,){
final _that = this;
switch (_that) {
case _GetCommentsByTicketIdQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetCommentsByTicketIdQuery value)?  $default,){
final _that = this;
switch (_that) {
case _GetCommentsByTicketIdQuery() when $default != null:
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
case _GetCommentsByTicketIdQuery() when $default != null:
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
case _GetCommentsByTicketIdQuery():
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
case _GetCommentsByTicketIdQuery() when $default != null:
return $default(_that.ticketId);case _:
  return null;

}
}

}

/// @nodoc


class _GetCommentsByTicketIdQuery implements GetCommentsByTicketIdQuery {
  const _GetCommentsByTicketIdQuery({required this.ticketId});
  

@override final  String ticketId;

/// Create a copy of GetCommentsByTicketIdQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCommentsByTicketIdQueryCopyWith<_GetCommentsByTicketIdQuery> get copyWith => __$GetCommentsByTicketIdQueryCopyWithImpl<_GetCommentsByTicketIdQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCommentsByTicketIdQuery&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId);

@override
String toString() {
  return 'GetCommentsByTicketIdQuery(ticketId: $ticketId)';
}


}

/// @nodoc
abstract mixin class _$GetCommentsByTicketIdQueryCopyWith<$Res> implements $GetCommentsByTicketIdQueryCopyWith<$Res> {
  factory _$GetCommentsByTicketIdQueryCopyWith(_GetCommentsByTicketIdQuery value, $Res Function(_GetCommentsByTicketIdQuery) _then) = __$GetCommentsByTicketIdQueryCopyWithImpl;
@override @useResult
$Res call({
 String ticketId
});




}
/// @nodoc
class __$GetCommentsByTicketIdQueryCopyWithImpl<$Res>
    implements _$GetCommentsByTicketIdQueryCopyWith<$Res> {
  __$GetCommentsByTicketIdQueryCopyWithImpl(this._self, this._then);

  final _GetCommentsByTicketIdQuery _self;
  final $Res Function(_GetCommentsByTicketIdQuery) _then;

/// Create a copy of GetCommentsByTicketIdQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,}) {
  return _then(_GetCommentsByTicketIdQuery(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
