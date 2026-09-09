// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_department_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateDepartmentCommand {

 String get id; String get name;
/// Create a copy of UpdateDepartmentCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDepartmentCommandCopyWith<UpdateDepartmentCommand> get copyWith => _$UpdateDepartmentCommandCopyWithImpl<UpdateDepartmentCommand>(this as UpdateDepartmentCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDepartmentCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'UpdateDepartmentCommand(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $UpdateDepartmentCommandCopyWith<$Res>  {
  factory $UpdateDepartmentCommandCopyWith(UpdateDepartmentCommand value, $Res Function(UpdateDepartmentCommand) _then) = _$UpdateDepartmentCommandCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$UpdateDepartmentCommandCopyWithImpl<$Res>
    implements $UpdateDepartmentCommandCopyWith<$Res> {
  _$UpdateDepartmentCommandCopyWithImpl(this._self, this._then);

  final UpdateDepartmentCommand _self;
  final $Res Function(UpdateDepartmentCommand) _then;

/// Create a copy of UpdateDepartmentCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(UpdateDepartmentCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDepartmentCommand].
extension UpdateDepartmentCommandPatterns on UpdateDepartmentCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDepartmentCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDepartmentCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDepartmentCommand value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDepartmentCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDepartmentCommand value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDepartmentCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDepartmentCommand() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _UpdateDepartmentCommand():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDepartmentCommand() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateDepartmentCommand implements UpdateDepartmentCommand {
  const _UpdateDepartmentCommand({required this.id, required this.name});
  

@override final  String id;
@override final  String name;

/// Create a copy of UpdateDepartmentCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDepartmentCommandCopyWith<_UpdateDepartmentCommand> get copyWith => __$UpdateDepartmentCommandCopyWithImpl<_UpdateDepartmentCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDepartmentCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'UpdateDepartmentCommand(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$UpdateDepartmentCommandCopyWith<$Res> implements $UpdateDepartmentCommandCopyWith<$Res> {
  factory _$UpdateDepartmentCommandCopyWith(_UpdateDepartmentCommand value, $Res Function(_UpdateDepartmentCommand) _then) = __$UpdateDepartmentCommandCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$UpdateDepartmentCommandCopyWithImpl<$Res>
    implements _$UpdateDepartmentCommandCopyWith<$Res> {
  __$UpdateDepartmentCommandCopyWithImpl(this._self, this._then);

  final _UpdateDepartmentCommand _self;
  final $Res Function(_UpdateDepartmentCommand) _then;

/// Create a copy of UpdateDepartmentCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_UpdateDepartmentCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
