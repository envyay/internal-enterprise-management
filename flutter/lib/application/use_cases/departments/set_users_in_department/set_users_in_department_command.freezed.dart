// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_users_in_department_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetUsersInDepartmentCommand {

 String get id; List<String> get userIds;
/// Create a copy of SetUsersInDepartmentCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetUsersInDepartmentCommandCopyWith<SetUsersInDepartmentCommand> get copyWith => _$SetUsersInDepartmentCommandCopyWithImpl<SetUsersInDepartmentCommand>(this as SetUsersInDepartmentCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetUsersInDepartmentCommand&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.userIds, userIds));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(userIds));

@override
String toString() {
  return 'SetUsersInDepartmentCommand(id: $id, userIds: $userIds)';
}


}

/// @nodoc
abstract mixin class $SetUsersInDepartmentCommandCopyWith<$Res>  {
  factory $SetUsersInDepartmentCommandCopyWith(SetUsersInDepartmentCommand value, $Res Function(SetUsersInDepartmentCommand) _then) = _$SetUsersInDepartmentCommandCopyWithImpl;
@useResult
$Res call({
 String id, List<String> userIds
});




}
/// @nodoc
class _$SetUsersInDepartmentCommandCopyWithImpl<$Res>
    implements $SetUsersInDepartmentCommandCopyWith<$Res> {
  _$SetUsersInDepartmentCommandCopyWithImpl(this._self, this._then);

  final SetUsersInDepartmentCommand _self;
  final $Res Function(SetUsersInDepartmentCommand) _then;

/// Create a copy of SetUsersInDepartmentCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userIds = null,}) {
  return _then(SetUsersInDepartmentCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userIds: null == userIds ? _self.userIds : userIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [SetUsersInDepartmentCommand].
extension SetUsersInDepartmentCommandPatterns on SetUsersInDepartmentCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetUsersInDepartmentCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetUsersInDepartmentCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetUsersInDepartmentCommand value)  $default,){
final _that = this;
switch (_that) {
case _SetUsersInDepartmentCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetUsersInDepartmentCommand value)?  $default,){
final _that = this;
switch (_that) {
case _SetUsersInDepartmentCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<String> userIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetUsersInDepartmentCommand() when $default != null:
return $default(_that.id,_that.userIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<String> userIds)  $default,) {final _that = this;
switch (_that) {
case _SetUsersInDepartmentCommand():
return $default(_that.id,_that.userIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<String> userIds)?  $default,) {final _that = this;
switch (_that) {
case _SetUsersInDepartmentCommand() when $default != null:
return $default(_that.id,_that.userIds);case _:
  return null;

}
}

}

/// @nodoc


class _SetUsersInDepartmentCommand implements SetUsersInDepartmentCommand {
  const _SetUsersInDepartmentCommand({required this.id, required  List<String> userIds}): _userIds = userIds;
  

@override final  String id;
 final  List<String> _userIds;
@override List<String> get userIds {
  if (_userIds is EqualUnmodifiableListView) return _userIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userIds);
}


/// Create a copy of SetUsersInDepartmentCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetUsersInDepartmentCommandCopyWith<_SetUsersInDepartmentCommand> get copyWith => __$SetUsersInDepartmentCommandCopyWithImpl<_SetUsersInDepartmentCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetUsersInDepartmentCommand&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._userIds, _userIds));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_userIds));

@override
String toString() {
  return 'SetUsersInDepartmentCommand(id: $id, userIds: $userIds)';
}


}

/// @nodoc
abstract mixin class _$SetUsersInDepartmentCommandCopyWith<$Res> implements $SetUsersInDepartmentCommandCopyWith<$Res> {
  factory _$SetUsersInDepartmentCommandCopyWith(_SetUsersInDepartmentCommand value, $Res Function(_SetUsersInDepartmentCommand) _then) = __$SetUsersInDepartmentCommandCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String> userIds
});




}
/// @nodoc
class __$SetUsersInDepartmentCommandCopyWithImpl<$Res>
    implements _$SetUsersInDepartmentCommandCopyWith<$Res> {
  __$SetUsersInDepartmentCommandCopyWithImpl(this._self, this._then);

  final _SetUsersInDepartmentCommand _self;
  final $Res Function(_SetUsersInDepartmentCommand) _then;

/// Create a copy of SetUsersInDepartmentCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userIds = null,}) {
  return _then(_SetUsersInDepartmentCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userIds: null == userIds ? _self._userIds : userIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
