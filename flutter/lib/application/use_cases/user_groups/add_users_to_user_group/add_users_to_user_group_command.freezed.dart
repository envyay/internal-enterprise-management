// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_users_to_user_group_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddUsersToUserGroupCommand {

 String get id; List<String> get usersIds;
/// Create a copy of AddUsersToUserGroupCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddUsersToUserGroupCommandCopyWith<AddUsersToUserGroupCommand> get copyWith => _$AddUsersToUserGroupCommandCopyWithImpl<AddUsersToUserGroupCommand>(this as AddUsersToUserGroupCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddUsersToUserGroupCommand&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.usersIds, usersIds));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(usersIds));

@override
String toString() {
  return 'AddUsersToUserGroupCommand(id: $id, usersIds: $usersIds)';
}


}

/// @nodoc
abstract mixin class $AddUsersToUserGroupCommandCopyWith<$Res>  {
  factory $AddUsersToUserGroupCommandCopyWith(AddUsersToUserGroupCommand value, $Res Function(AddUsersToUserGroupCommand) _then) = _$AddUsersToUserGroupCommandCopyWithImpl;
@useResult
$Res call({
 String id, List<String> usersIds
});




}
/// @nodoc
class _$AddUsersToUserGroupCommandCopyWithImpl<$Res>
    implements $AddUsersToUserGroupCommandCopyWith<$Res> {
  _$AddUsersToUserGroupCommandCopyWithImpl(this._self, this._then);

  final AddUsersToUserGroupCommand _self;
  final $Res Function(AddUsersToUserGroupCommand) _then;

/// Create a copy of AddUsersToUserGroupCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? usersIds = null,}) {
  return _then(AddUsersToUserGroupCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,usersIds: null == usersIds ? _self.usersIds : usersIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AddUsersToUserGroupCommand].
extension AddUsersToUserGroupCommandPatterns on AddUsersToUserGroupCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddUsersToUserGroupCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddUsersToUserGroupCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddUsersToUserGroupCommand value)  $default,){
final _that = this;
switch (_that) {
case _AddUsersToUserGroupCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddUsersToUserGroupCommand value)?  $default,){
final _that = this;
switch (_that) {
case _AddUsersToUserGroupCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<String> usersIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddUsersToUserGroupCommand() when $default != null:
return $default(_that.id,_that.usersIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<String> usersIds)  $default,) {final _that = this;
switch (_that) {
case _AddUsersToUserGroupCommand():
return $default(_that.id,_that.usersIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<String> usersIds)?  $default,) {final _that = this;
switch (_that) {
case _AddUsersToUserGroupCommand() when $default != null:
return $default(_that.id,_that.usersIds);case _:
  return null;

}
}

}

/// @nodoc


class _AddUsersToUserGroupCommand implements AddUsersToUserGroupCommand {
  const _AddUsersToUserGroupCommand({required this.id, required  List<String> usersIds}): _usersIds = usersIds;
  

@override final  String id;
 final  List<String> _usersIds;
@override List<String> get usersIds {
  if (_usersIds is EqualUnmodifiableListView) return _usersIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_usersIds);
}


/// Create a copy of AddUsersToUserGroupCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddUsersToUserGroupCommandCopyWith<_AddUsersToUserGroupCommand> get copyWith => __$AddUsersToUserGroupCommandCopyWithImpl<_AddUsersToUserGroupCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddUsersToUserGroupCommand&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._usersIds, _usersIds));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_usersIds));

@override
String toString() {
  return 'AddUsersToUserGroupCommand(id: $id, usersIds: $usersIds)';
}


}

/// @nodoc
abstract mixin class _$AddUsersToUserGroupCommandCopyWith<$Res> implements $AddUsersToUserGroupCommandCopyWith<$Res> {
  factory _$AddUsersToUserGroupCommandCopyWith(_AddUsersToUserGroupCommand value, $Res Function(_AddUsersToUserGroupCommand) _then) = __$AddUsersToUserGroupCommandCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String> usersIds
});




}
/// @nodoc
class __$AddUsersToUserGroupCommandCopyWithImpl<$Res>
    implements _$AddUsersToUserGroupCommandCopyWith<$Res> {
  __$AddUsersToUserGroupCommandCopyWithImpl(this._self, this._then);

  final _AddUsersToUserGroupCommand _self;
  final $Res Function(_AddUsersToUserGroupCommand) _then;

/// Create a copy of AddUsersToUserGroupCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? usersIds = null,}) {
  return _then(_AddUsersToUserGroupCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,usersIds: null == usersIds ? _self._usersIds : usersIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
