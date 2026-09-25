// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_users_by_project_id_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetUsersByProjectIdQuery {

 String get projectId;
/// Create a copy of GetUsersByProjectIdQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUsersByProjectIdQueryCopyWith<GetUsersByProjectIdQuery> get copyWith => _$GetUsersByProjectIdQueryCopyWithImpl<GetUsersByProjectIdQuery>(this as GetUsersByProjectIdQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUsersByProjectIdQuery&&(identical(other.projectId, projectId) || other.projectId == projectId));
}


@override
int get hashCode => Object.hash(runtimeType,projectId);

@override
String toString() {
  return 'GetUsersByProjectIdQuery(projectId: $projectId)';
}


}

/// @nodoc
abstract mixin class $GetUsersByProjectIdQueryCopyWith<$Res>  {
  factory $GetUsersByProjectIdQueryCopyWith(GetUsersByProjectIdQuery value, $Res Function(GetUsersByProjectIdQuery) _then) = _$GetUsersByProjectIdQueryCopyWithImpl;
@useResult
$Res call({
 String projectId
});




}
/// @nodoc
class _$GetUsersByProjectIdQueryCopyWithImpl<$Res>
    implements $GetUsersByProjectIdQueryCopyWith<$Res> {
  _$GetUsersByProjectIdQueryCopyWithImpl(this._self, this._then);

  final GetUsersByProjectIdQuery _self;
  final $Res Function(GetUsersByProjectIdQuery) _then;

/// Create a copy of GetUsersByProjectIdQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projectId = null,}) {
  return _then(GetUsersByProjectIdQuery(
projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetUsersByProjectIdQuery].
extension GetUsersByProjectIdQueryPatterns on GetUsersByProjectIdQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetUsersByProjectIdQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUsersByProjectIdQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetUsersByProjectIdQuery value)  $default,){
final _that = this;
switch (_that) {
case _GetUsersByProjectIdQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetUsersByProjectIdQuery value)?  $default,){
final _that = this;
switch (_that) {
case _GetUsersByProjectIdQuery() when $default != null:
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
case _GetUsersByProjectIdQuery() when $default != null:
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
case _GetUsersByProjectIdQuery():
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
case _GetUsersByProjectIdQuery() when $default != null:
return $default(_that.projectId);case _:
  return null;

}
}

}

/// @nodoc


class _GetUsersByProjectIdQuery implements GetUsersByProjectIdQuery {
  const _GetUsersByProjectIdQuery({required this.projectId});
  

@override final  String projectId;

/// Create a copy of GetUsersByProjectIdQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUsersByProjectIdQueryCopyWith<_GetUsersByProjectIdQuery> get copyWith => __$GetUsersByProjectIdQueryCopyWithImpl<_GetUsersByProjectIdQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUsersByProjectIdQuery&&(identical(other.projectId, projectId) || other.projectId == projectId));
}


@override
int get hashCode => Object.hash(runtimeType,projectId);

@override
String toString() {
  return 'GetUsersByProjectIdQuery(projectId: $projectId)';
}


}

/// @nodoc
abstract mixin class _$GetUsersByProjectIdQueryCopyWith<$Res> implements $GetUsersByProjectIdQueryCopyWith<$Res> {
  factory _$GetUsersByProjectIdQueryCopyWith(_GetUsersByProjectIdQuery value, $Res Function(_GetUsersByProjectIdQuery) _then) = __$GetUsersByProjectIdQueryCopyWithImpl;
@override @useResult
$Res call({
 String projectId
});




}
/// @nodoc
class __$GetUsersByProjectIdQueryCopyWithImpl<$Res>
    implements _$GetUsersByProjectIdQueryCopyWith<$Res> {
  __$GetUsersByProjectIdQueryCopyWithImpl(this._self, this._then);

  final _GetUsersByProjectIdQuery _self;
  final $Res Function(_GetUsersByProjectIdQuery) _then;

/// Create a copy of GetUsersByProjectIdQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? projectId = null,}) {
  return _then(_GetUsersByProjectIdQuery(
projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
