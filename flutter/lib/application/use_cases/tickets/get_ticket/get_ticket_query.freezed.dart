// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_ticket_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetTicketQuery {

 String get id;
/// Create a copy of GetTicketQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTicketQueryCopyWith<GetTicketQuery> get copyWith => _$GetTicketQueryCopyWithImpl<GetTicketQuery>(this as GetTicketQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTicketQuery&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GetTicketQuery(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetTicketQueryCopyWith<$Res>  {
  factory $GetTicketQueryCopyWith(GetTicketQuery value, $Res Function(GetTicketQuery) _then) = _$GetTicketQueryCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetTicketQueryCopyWithImpl<$Res>
    implements $GetTicketQueryCopyWith<$Res> {
  _$GetTicketQueryCopyWithImpl(this._self, this._then);

  final GetTicketQuery _self;
  final $Res Function(GetTicketQuery) _then;

/// Create a copy of GetTicketQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(GetTicketQuery(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetTicketQuery].
extension GetTicketQueryPatterns on GetTicketQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetTicketQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTicketQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetTicketQuery value)  $default,){
final _that = this;
switch (_that) {
case _GetTicketQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetTicketQuery value)?  $default,){
final _that = this;
switch (_that) {
case _GetTicketQuery() when $default != null:
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
case _GetTicketQuery() when $default != null:
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
case _GetTicketQuery():
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
case _GetTicketQuery() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _GetTicketQuery implements GetTicketQuery {
  const _GetTicketQuery({required this.id});
  

@override final  String id;

/// Create a copy of GetTicketQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTicketQueryCopyWith<_GetTicketQuery> get copyWith => __$GetTicketQueryCopyWithImpl<_GetTicketQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTicketQuery&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GetTicketQuery(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetTicketQueryCopyWith<$Res> implements $GetTicketQueryCopyWith<$Res> {
  factory _$GetTicketQueryCopyWith(_GetTicketQuery value, $Res Function(_GetTicketQuery) _then) = __$GetTicketQueryCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetTicketQueryCopyWithImpl<$Res>
    implements _$GetTicketQueryCopyWith<$Res> {
  __$GetTicketQueryCopyWithImpl(this._self, this._then);

  final _GetTicketQuery _self;
  final $Res Function(_GetTicketQuery) _then;

/// Create a copy of GetTicketQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetTicketQuery(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
