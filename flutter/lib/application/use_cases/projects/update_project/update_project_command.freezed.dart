// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_project_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateProjectCommand {

 String get id; String get name; String get description; String get code;
/// Create a copy of UpdateProjectCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProjectCommandCopyWith<UpdateProjectCommand> get copyWith => _$UpdateProjectCommandCopyWithImpl<UpdateProjectCommand>(this as UpdateProjectCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProjectCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,code);

@override
String toString() {
  return 'UpdateProjectCommand(id: $id, name: $name, description: $description, code: $code)';
}


}

/// @nodoc
abstract mixin class $UpdateProjectCommandCopyWith<$Res>  {
  factory $UpdateProjectCommandCopyWith(UpdateProjectCommand value, $Res Function(UpdateProjectCommand) _then) = _$UpdateProjectCommandCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String code
});




}
/// @nodoc
class _$UpdateProjectCommandCopyWithImpl<$Res>
    implements $UpdateProjectCommandCopyWith<$Res> {
  _$UpdateProjectCommandCopyWithImpl(this._self, this._then);

  final UpdateProjectCommand _self;
  final $Res Function(UpdateProjectCommand) _then;

/// Create a copy of UpdateProjectCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? code = null,}) {
  return _then(UpdateProjectCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProjectCommand].
extension UpdateProjectCommandPatterns on UpdateProjectCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProjectCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProjectCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProjectCommand value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProjectCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProjectCommand value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProjectCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProjectCommand() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String code)  $default,) {final _that = this;
switch (_that) {
case _UpdateProjectCommand():
return $default(_that.id,_that.name,_that.description,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  String code)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProjectCommand() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.code);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateProjectCommand implements UpdateProjectCommand {
  const _UpdateProjectCommand({required this.id, required this.name, required this.description, required this.code});
  

@override final  String id;
@override final  String name;
@override final  String description;
@override final  String code;

/// Create a copy of UpdateProjectCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProjectCommandCopyWith<_UpdateProjectCommand> get copyWith => __$UpdateProjectCommandCopyWithImpl<_UpdateProjectCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProjectCommand&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,code);

@override
String toString() {
  return 'UpdateProjectCommand(id: $id, name: $name, description: $description, code: $code)';
}


}

/// @nodoc
abstract mixin class _$UpdateProjectCommandCopyWith<$Res> implements $UpdateProjectCommandCopyWith<$Res> {
  factory _$UpdateProjectCommandCopyWith(_UpdateProjectCommand value, $Res Function(_UpdateProjectCommand) _then) = __$UpdateProjectCommandCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String code
});




}
/// @nodoc
class __$UpdateProjectCommandCopyWithImpl<$Res>
    implements _$UpdateProjectCommandCopyWith<$Res> {
  __$UpdateProjectCommandCopyWithImpl(this._self, this._then);

  final _UpdateProjectCommand _self;
  final $Res Function(_UpdateProjectCommand) _then;

/// Create a copy of UpdateProjectCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? code = null,}) {
  return _then(_UpdateProjectCommand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
