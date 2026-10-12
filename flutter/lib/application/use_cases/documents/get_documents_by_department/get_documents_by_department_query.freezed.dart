// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_documents_by_department_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetDocumentsByDepartmentQuery {

 String get departmentId;
/// Create a copy of GetDocumentsByDepartmentQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDocumentsByDepartmentQueryCopyWith<GetDocumentsByDepartmentQuery> get copyWith => _$GetDocumentsByDepartmentQueryCopyWithImpl<GetDocumentsByDepartmentQuery>(this as GetDocumentsByDepartmentQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDocumentsByDepartmentQuery&&(identical(other.departmentId, departmentId) || other.departmentId == departmentId));
}


@override
int get hashCode => Object.hash(runtimeType,departmentId);

@override
String toString() {
  return 'GetDocumentsByDepartmentQuery(departmentId: $departmentId)';
}


}

/// @nodoc
abstract mixin class $GetDocumentsByDepartmentQueryCopyWith<$Res>  {
  factory $GetDocumentsByDepartmentQueryCopyWith(GetDocumentsByDepartmentQuery value, $Res Function(GetDocumentsByDepartmentQuery) _then) = _$GetDocumentsByDepartmentQueryCopyWithImpl;
@useResult
$Res call({
 String departmentId
});




}
/// @nodoc
class _$GetDocumentsByDepartmentQueryCopyWithImpl<$Res>
    implements $GetDocumentsByDepartmentQueryCopyWith<$Res> {
  _$GetDocumentsByDepartmentQueryCopyWithImpl(this._self, this._then);

  final GetDocumentsByDepartmentQuery _self;
  final $Res Function(GetDocumentsByDepartmentQuery) _then;

/// Create a copy of GetDocumentsByDepartmentQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? departmentId = null,}) {
  return _then(GetDocumentsByDepartmentQuery(
departmentId: null == departmentId ? _self.departmentId : departmentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetDocumentsByDepartmentQuery].
extension GetDocumentsByDepartmentQueryPatterns on GetDocumentsByDepartmentQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetDocumentsByDepartmentQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDocumentsByDepartmentQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetDocumentsByDepartmentQuery value)  $default,){
final _that = this;
switch (_that) {
case _GetDocumentsByDepartmentQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetDocumentsByDepartmentQuery value)?  $default,){
final _that = this;
switch (_that) {
case _GetDocumentsByDepartmentQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String departmentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDocumentsByDepartmentQuery() when $default != null:
return $default(_that.departmentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String departmentId)  $default,) {final _that = this;
switch (_that) {
case _GetDocumentsByDepartmentQuery():
return $default(_that.departmentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String departmentId)?  $default,) {final _that = this;
switch (_that) {
case _GetDocumentsByDepartmentQuery() when $default != null:
return $default(_that.departmentId);case _:
  return null;

}
}

}

/// @nodoc


class _GetDocumentsByDepartmentQuery implements GetDocumentsByDepartmentQuery {
  const _GetDocumentsByDepartmentQuery({required this.departmentId});
  

@override final  String departmentId;

/// Create a copy of GetDocumentsByDepartmentQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDocumentsByDepartmentQueryCopyWith<_GetDocumentsByDepartmentQuery> get copyWith => __$GetDocumentsByDepartmentQueryCopyWithImpl<_GetDocumentsByDepartmentQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDocumentsByDepartmentQuery&&(identical(other.departmentId, departmentId) || other.departmentId == departmentId));
}


@override
int get hashCode => Object.hash(runtimeType,departmentId);

@override
String toString() {
  return 'GetDocumentsByDepartmentQuery(departmentId: $departmentId)';
}


}

/// @nodoc
abstract mixin class _$GetDocumentsByDepartmentQueryCopyWith<$Res> implements $GetDocumentsByDepartmentQueryCopyWith<$Res> {
  factory _$GetDocumentsByDepartmentQueryCopyWith(_GetDocumentsByDepartmentQuery value, $Res Function(_GetDocumentsByDepartmentQuery) _then) = __$GetDocumentsByDepartmentQueryCopyWithImpl;
@override @useResult
$Res call({
 String departmentId
});




}
/// @nodoc
class __$GetDocumentsByDepartmentQueryCopyWithImpl<$Res>
    implements _$GetDocumentsByDepartmentQueryCopyWith<$Res> {
  __$GetDocumentsByDepartmentQueryCopyWithImpl(this._self, this._then);

  final _GetDocumentsByDepartmentQuery _self;
  final $Res Function(_GetDocumentsByDepartmentQuery) _then;

/// Create a copy of GetDocumentsByDepartmentQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? departmentId = null,}) {
  return _then(_GetDocumentsByDepartmentQuery(
departmentId: null == departmentId ? _self.departmentId : departmentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
