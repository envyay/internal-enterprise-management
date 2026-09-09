// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_ticket_status_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateTicketStatusCommand {

 String get name; ProjectDto get projectId;
/// Create a copy of CreateTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTicketStatusCommandCopyWith<CreateTicketStatusCommand> get copyWith => _$CreateTicketStatusCommandCopyWithImpl<CreateTicketStatusCommand>(this as CreateTicketStatusCommand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTicketStatusCommand&&(identical(other.name, name) || other.name == name)&&(identical(other.projectId, projectId) || other.projectId == projectId));
}


@override
int get hashCode => Object.hash(runtimeType,name,projectId);

@override
String toString() {
  return 'CreateTicketStatusCommand(name: $name, projectId: $projectId)';
}


}

/// @nodoc
abstract mixin class $CreateTicketStatusCommandCopyWith<$Res>  {
  factory $CreateTicketStatusCommandCopyWith(CreateTicketStatusCommand value, $Res Function(CreateTicketStatusCommand) _then) = _$CreateTicketStatusCommandCopyWithImpl;
@useResult
$Res call({
 String name, ProjectDto projectId
});


$ProjectDtoCopyWith<$Res> get projectId;

}
/// @nodoc
class _$CreateTicketStatusCommandCopyWithImpl<$Res>
    implements $CreateTicketStatusCommandCopyWith<$Res> {
  _$CreateTicketStatusCommandCopyWithImpl(this._self, this._then);

  final CreateTicketStatusCommand _self;
  final $Res Function(CreateTicketStatusCommand) _then;

/// Create a copy of CreateTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? projectId = null,}) {
  return _then(CreateTicketStatusCommand(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as ProjectDto,
  ));
}
/// Create a copy of CreateTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectDtoCopyWith<$Res> get projectId {
  
  return $ProjectDtoCopyWith<$Res>(_self.projectId, (value) {
    return _then(_self.copyWith(projectId: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateTicketStatusCommand].
extension CreateTicketStatusCommandPatterns on CreateTicketStatusCommand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTicketStatusCommand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTicketStatusCommand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTicketStatusCommand value)  $default,){
final _that = this;
switch (_that) {
case _CreateTicketStatusCommand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTicketStatusCommand value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTicketStatusCommand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  ProjectDto projectId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTicketStatusCommand() when $default != null:
return $default(_that.name,_that.projectId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  ProjectDto projectId)  $default,) {final _that = this;
switch (_that) {
case _CreateTicketStatusCommand():
return $default(_that.name,_that.projectId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  ProjectDto projectId)?  $default,) {final _that = this;
switch (_that) {
case _CreateTicketStatusCommand() when $default != null:
return $default(_that.name,_that.projectId);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTicketStatusCommand implements CreateTicketStatusCommand {
  const _CreateTicketStatusCommand({required this.name, required this.projectId});
  

@override final  String name;
@override final  ProjectDto projectId;

/// Create a copy of CreateTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTicketStatusCommandCopyWith<_CreateTicketStatusCommand> get copyWith => __$CreateTicketStatusCommandCopyWithImpl<_CreateTicketStatusCommand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTicketStatusCommand&&(identical(other.name, name) || other.name == name)&&(identical(other.projectId, projectId) || other.projectId == projectId));
}


@override
int get hashCode => Object.hash(runtimeType,name,projectId);

@override
String toString() {
  return 'CreateTicketStatusCommand(name: $name, projectId: $projectId)';
}


}

/// @nodoc
abstract mixin class _$CreateTicketStatusCommandCopyWith<$Res> implements $CreateTicketStatusCommandCopyWith<$Res> {
  factory _$CreateTicketStatusCommandCopyWith(_CreateTicketStatusCommand value, $Res Function(_CreateTicketStatusCommand) _then) = __$CreateTicketStatusCommandCopyWithImpl;
@override @useResult
$Res call({
 String name, ProjectDto projectId
});


@override $ProjectDtoCopyWith<$Res> get projectId;

}
/// @nodoc
class __$CreateTicketStatusCommandCopyWithImpl<$Res>
    implements _$CreateTicketStatusCommandCopyWith<$Res> {
  __$CreateTicketStatusCommandCopyWithImpl(this._self, this._then);

  final _CreateTicketStatusCommand _self;
  final $Res Function(_CreateTicketStatusCommand) _then;

/// Create a copy of CreateTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? projectId = null,}) {
  return _then(_CreateTicketStatusCommand(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as ProjectDto,
  ));
}

/// Create a copy of CreateTicketStatusCommand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectDtoCopyWith<$Res> get projectId {
  
  return $ProjectDtoCopyWith<$Res>(_self.projectId, (value) {
    return _then(_self.copyWith(projectId: value));
  });
}
}

// dart format on
