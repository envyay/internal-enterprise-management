// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_ticket_statuses_by_project_id_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetTicketStatusesByProjectIdQuery {

 String get projectId;
/// Create a copy of GetTicketStatusesByProjectIdQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTicketStatusesByProjectIdQueryCopyWith<GetTicketStatusesByProjectIdQuery> get copyWith => _$GetTicketStatusesByProjectIdQueryCopyWithImpl<GetTicketStatusesByProjectIdQuery>(this as GetTicketStatusesByProjectIdQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTicketStatusesByProjectIdQuery&&(identical(other.projectId, projectId) || other.projectId == projectId));
}


@override
int get hashCode => Object.hash(runtimeType,projectId);

@override
String toString() {
  return 'GetTicketStatusesByProjectIdQuery(projectId: $projectId)';
}


}

/// @nodoc
abstract mixin class $GetTicketStatusesByProjectIdQueryCopyWith<$Res>  {
  factory $GetTicketStatusesByProjectIdQueryCopyWith(GetTicketStatusesByProjectIdQuery value, $Res Function(GetTicketStatusesByProjectIdQuery) _then) = _$GetTicketStatusesByProjectIdQueryCopyWithImpl;
@useResult
$Res call({
 String projectId
});




}
/// @nodoc
class _$GetTicketStatusesByProjectIdQueryCopyWithImpl<$Res>
    implements $GetTicketStatusesByProjectIdQueryCopyWith<$Res> {
  _$GetTicketStatusesByProjectIdQueryCopyWithImpl(this._self, this._then);

  final GetTicketStatusesByProjectIdQuery _self;
  final $Res Function(GetTicketStatusesByProjectIdQuery) _then;

/// Create a copy of GetTicketStatusesByProjectIdQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projectId = null,}) {
  return _then(GetTicketStatusesByProjectIdQuery(
projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetTicketStatusesByProjectIdQuery].
extension GetTicketStatusesByProjectIdQueryPatterns on GetTicketStatusesByProjectIdQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetTicketStatusesByProjectIdQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTicketStatusesByProjectIdQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetTicketStatusesByProjectIdQuery value)  $default,){
final _that = this;
switch (_that) {
case _GetTicketStatusesByProjectIdQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetTicketStatusesByProjectIdQuery value)?  $default,){
final _that = this;
switch (_that) {
case _GetTicketStatusesByProjectIdQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String projectId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTicketStatusesByProjectIdQuery() when $default != null:
return $default(_that.projectId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String projectId)  $default,) {final _that = this;
switch (_that) {
case _GetTicketStatusesByProjectIdQuery():
return $default(_that.projectId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String projectId)?  $default,) {final _that = this;
switch (_that) {
case _GetTicketStatusesByProjectIdQuery() when $default != null:
return $default(_that.projectId);case _:
  return null;

}
}

}

/// @nodoc


class _GetTicketStatusesByProjectIdQuery implements GetTicketStatusesByProjectIdQuery {
  const _GetTicketStatusesByProjectIdQuery({required this.projectId});
  

@override final  String projectId;

/// Create a copy of GetTicketStatusesByProjectIdQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTicketStatusesByProjectIdQueryCopyWith<_GetTicketStatusesByProjectIdQuery> get copyWith => __$GetTicketStatusesByProjectIdQueryCopyWithImpl<_GetTicketStatusesByProjectIdQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTicketStatusesByProjectIdQuery&&(identical(other.projectId, projectId) || other.projectId == projectId));
}


@override
int get hashCode => Object.hash(runtimeType,projectId);

@override
String toString() {
  return 'GetTicketStatusesByProjectIdQuery(projectId: $projectId)';
}


}

/// @nodoc
abstract mixin class _$GetTicketStatusesByProjectIdQueryCopyWith<$Res> implements $GetTicketStatusesByProjectIdQueryCopyWith<$Res> {
  factory _$GetTicketStatusesByProjectIdQueryCopyWith(_GetTicketStatusesByProjectIdQuery value, $Res Function(_GetTicketStatusesByProjectIdQuery) _then) = __$GetTicketStatusesByProjectIdQueryCopyWithImpl;
@override @useResult
$Res call({
 String projectId
});




}
/// @nodoc
class __$GetTicketStatusesByProjectIdQueryCopyWithImpl<$Res>
    implements _$GetTicketStatusesByProjectIdQueryCopyWith<$Res> {
  __$GetTicketStatusesByProjectIdQueryCopyWithImpl(this._self, this._then);

  final _GetTicketStatusesByProjectIdQuery _self;
  final $Res Function(_GetTicketStatusesByProjectIdQuery) _then;

/// Create a copy of GetTicketStatusesByProjectIdQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? projectId = null,}) {
  return _then(_GetTicketStatusesByProjectIdQuery(
projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
