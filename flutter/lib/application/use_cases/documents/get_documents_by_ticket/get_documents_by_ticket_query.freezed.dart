// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_documents_by_ticket_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetDocumentsByTicketQuery {

 String get ticketId;
/// Create a copy of GetDocumentsByTicketQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDocumentsByTicketQueryCopyWith<GetDocumentsByTicketQuery> get copyWith => _$GetDocumentsByTicketQueryCopyWithImpl<GetDocumentsByTicketQuery>(this as GetDocumentsByTicketQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDocumentsByTicketQuery&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId);

@override
String toString() {
  return 'GetDocumentsByTicketQuery(ticketId: $ticketId)';
}


}

/// @nodoc
abstract mixin class $GetDocumentsByTicketQueryCopyWith<$Res>  {
  factory $GetDocumentsByTicketQueryCopyWith(GetDocumentsByTicketQuery value, $Res Function(GetDocumentsByTicketQuery) _then) = _$GetDocumentsByTicketQueryCopyWithImpl;
@useResult
$Res call({
 String ticketId
});




}
/// @nodoc
class _$GetDocumentsByTicketQueryCopyWithImpl<$Res>
    implements $GetDocumentsByTicketQueryCopyWith<$Res> {
  _$GetDocumentsByTicketQueryCopyWithImpl(this._self, this._then);

  final GetDocumentsByTicketQuery _self;
  final $Res Function(GetDocumentsByTicketQuery) _then;

/// Create a copy of GetDocumentsByTicketQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,}) {
  return _then(GetDocumentsByTicketQuery(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetDocumentsByTicketQuery].
extension GetDocumentsByTicketQueryPatterns on GetDocumentsByTicketQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetDocumentsByTicketQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDocumentsByTicketQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetDocumentsByTicketQuery value)  $default,){
final _that = this;
switch (_that) {
case _GetDocumentsByTicketQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetDocumentsByTicketQuery value)?  $default,){
final _that = this;
switch (_that) {
case _GetDocumentsByTicketQuery() when $default != null:
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
case _GetDocumentsByTicketQuery() when $default != null:
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
case _GetDocumentsByTicketQuery():
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
case _GetDocumentsByTicketQuery() when $default != null:
return $default(_that.ticketId);case _:
  return null;

}
}

}

/// @nodoc


class _GetDocumentsByTicketQuery implements GetDocumentsByTicketQuery {
  const _GetDocumentsByTicketQuery({required this.ticketId});
  

@override final  String ticketId;

/// Create a copy of GetDocumentsByTicketQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDocumentsByTicketQueryCopyWith<_GetDocumentsByTicketQuery> get copyWith => __$GetDocumentsByTicketQueryCopyWithImpl<_GetDocumentsByTicketQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDocumentsByTicketQuery&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId);

@override
String toString() {
  return 'GetDocumentsByTicketQuery(ticketId: $ticketId)';
}


}

/// @nodoc
abstract mixin class _$GetDocumentsByTicketQueryCopyWith<$Res> implements $GetDocumentsByTicketQueryCopyWith<$Res> {
  factory _$GetDocumentsByTicketQueryCopyWith(_GetDocumentsByTicketQuery value, $Res Function(_GetDocumentsByTicketQuery) _then) = __$GetDocumentsByTicketQueryCopyWithImpl;
@override @useResult
$Res call({
 String ticketId
});




}
/// @nodoc
class __$GetDocumentsByTicketQueryCopyWithImpl<$Res>
    implements _$GetDocumentsByTicketQueryCopyWith<$Res> {
  __$GetDocumentsByTicketQueryCopyWithImpl(this._self, this._then);

  final _GetDocumentsByTicketQuery _self;
  final $Res Function(_GetDocumentsByTicketQuery) _then;

/// Create a copy of GetDocumentsByTicketQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,}) {
  return _then(_GetDocumentsByTicketQuery(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
