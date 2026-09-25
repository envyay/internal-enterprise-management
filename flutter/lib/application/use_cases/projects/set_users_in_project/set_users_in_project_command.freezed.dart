// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_users_in_project_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetUsersInProjectCommand {

 String get id; List<String> get userIds;
/// Create a copy of SetUsersInProjectCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetUsersInProjectCommandCopyWith<SetUsersInProjectCommand> get copyWith => _$SetUsersInProjectCommandCopyWithImpl<SetUsersInProjectCommand>(this as SetUsersInProjectCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetUsersInProjectCommand&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.userIds, userIds));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(userIds));

@override
String toString() {
  return 'SetUsersInProjectCommand(id: $id, userIds: $userIds)';
}


}

/// @nodoc
abstract mixin class $SetUsersInProjectCommandCopyWith<$Res>  {
  factory $SetUsersInProjectCommandCopyWith(SetUsersInProjectCommand value, $Res Function(SetUsersInProjectCommand) _then) = _$SetUsersInProjectCommandCopyWithImpl;
@useResult
$Res call({
 String id, List<String> userIds
});




}
/// @nodoc
class _$SetUsersInProjectCommandCopyWithImpl<$Res>
    implements $SetUsersInProjectCommandCopyWith<$Res> {
  _$SetUsersInProjectCommandCopyWithImpl(this._self, this._then);

  final SetUsersInProjectCommand _self;
  final $Res Function(SetUsersInProjectCommand) _then;

/// Create a copy of SetUsersInProjectCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userIds = null,}) {
  return _then(SetUsersInProjectCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userIds: null == userIds ? _self.userIds : userIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [SetUsersInProjectCommand].
extension SetUsersInProjectCommandPatterns on SetUsersInProjectCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetUsersInProjectCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetUsersInProjectCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetUsersInProjectCommand value)  $default,){
final _that = this;
switch (_that) {
case _SetUsersInProjectCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetUsersInProjectCommand value)?  $default,){
final _that = this;
switch (_that) {
case _SetUsersInProjectCommand() when $default != null:
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
case _SetUsersInProjectCommand() when $default != null:
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
case _SetUsersInProjectCommand():
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
case _SetUsersInProjectCommand() when $default != null:
return $default(_that.id,_that.userIds);case _:
  return null;

}
}

}

/// @nodoc


class _SetUsersInProjectCommand implements SetUsersInProjectCommand {
  const _SetUsersInProjectCommand({required this.id, required  List<String> userIds}): _userIds = userIds;
  

@override final  String id;
 final  List<String> _userIds;
@override List<String> get userIds {
  if (_userIds is EqualUnmodifiableListView) return _userIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userIds);
}


/// Create a copy of SetUsersInProjectCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetUsersInProjectCommandCopyWith<_SetUsersInProjectCommand> get copyWith => __$SetUsersInProjectCommandCopyWithImpl<_SetUsersInProjectCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetUsersInProjectCommand&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._userIds, _userIds));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_userIds));

@override
String toString() {
  return 'SetUsersInProjectCommand(id: $id, userIds: $userIds)';
}


}

/// @nodoc
abstract mixin class _$SetUsersInProjectCommandCopyWith<$Res> implements $SetUsersInProjectCommandCopyWith<$Res> {
  factory _$SetUsersInProjectCommandCopyWith(_SetUsersInProjectCommand value, $Res Function(_SetUsersInProjectCommand) _then) = __$SetUsersInProjectCommandCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String> userIds
});




}
/// @nodoc
class __$SetUsersInProjectCommandCopyWithImpl<$Res>
    implements _$SetUsersInProjectCommandCopyWith<$Res> {
  __$SetUsersInProjectCommandCopyWithImpl(this._self, this._then);

  final _SetUsersInProjectCommand _self;
  final $Res Function(_SetUsersInProjectCommand) _then;

/// Create a copy of SetUsersInProjectCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userIds = null,}) {
  return _then(_SetUsersInProjectCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userIds: null == userIds ? _self._userIds : userIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
