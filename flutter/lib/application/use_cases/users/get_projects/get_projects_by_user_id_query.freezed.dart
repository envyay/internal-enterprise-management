// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_projects_by_user_id_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetProjectsByUserIdQuery {

 String get userId;
/// Create a copy of GetProjectsByUserIdQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProjectsByUserIdQueryCopyWith<GetProjectsByUserIdQuery> get copyWith => _$GetProjectsByUserIdQueryCopyWithImpl<GetProjectsByUserIdQuery>(this as GetProjectsByUserIdQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProjectsByUserIdQuery&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'GetProjectsByUserIdQuery(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $GetProjectsByUserIdQueryCopyWith<$Res>  {
  factory $GetProjectsByUserIdQueryCopyWith(GetProjectsByUserIdQuery value, $Res Function(GetProjectsByUserIdQuery) _then) = _$GetProjectsByUserIdQueryCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$GetProjectsByUserIdQueryCopyWithImpl<$Res>
    implements $GetProjectsByUserIdQueryCopyWith<$Res> {
  _$GetProjectsByUserIdQueryCopyWithImpl(this._self, this._then);

  final GetProjectsByUserIdQuery _self;
  final $Res Function(GetProjectsByUserIdQuery) _then;

/// Create a copy of GetProjectsByUserIdQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(GetProjectsByUserIdQuery(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetProjectsByUserIdQuery].
extension GetProjectsByUserIdQueryPatterns on GetProjectsByUserIdQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetProjectsByUserIdQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetProjectsByUserIdQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetProjectsByUserIdQuery value)  $default,){
final _that = this;
switch (_that) {
case _GetProjectsByUserIdQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetProjectsByUserIdQuery value)?  $default,){
final _that = this;
switch (_that) {
case _GetProjectsByUserIdQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetProjectsByUserIdQuery() when $default != null:
return $default(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId)  $default,) {final _that = this;
switch (_that) {
case _GetProjectsByUserIdQuery():
return $default(_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId)?  $default,) {final _that = this;
switch (_that) {
case _GetProjectsByUserIdQuery() when $default != null:
return $default(_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _GetProjectsByUserIdQuery implements GetProjectsByUserIdQuery {
  const _GetProjectsByUserIdQuery({required this.userId});
  

@override final  String userId;

/// Create a copy of GetProjectsByUserIdQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProjectsByUserIdQueryCopyWith<_GetProjectsByUserIdQuery> get copyWith => __$GetProjectsByUserIdQueryCopyWithImpl<_GetProjectsByUserIdQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProjectsByUserIdQuery&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'GetProjectsByUserIdQuery(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetProjectsByUserIdQueryCopyWith<$Res> implements $GetProjectsByUserIdQueryCopyWith<$Res> {
  factory _$GetProjectsByUserIdQueryCopyWith(_GetProjectsByUserIdQuery value, $Res Function(_GetProjectsByUserIdQuery) _then) = __$GetProjectsByUserIdQueryCopyWithImpl;
@override @useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$GetProjectsByUserIdQueryCopyWithImpl<$Res>
    implements _$GetProjectsByUserIdQueryCopyWith<$Res> {
  __$GetProjectsByUserIdQueryCopyWithImpl(this._self, this._then);

  final _GetProjectsByUserIdQuery _self;
  final $Res Function(_GetProjectsByUserIdQuery) _then;

/// Create a copy of GetProjectsByUserIdQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetProjectsByUserIdQuery(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
