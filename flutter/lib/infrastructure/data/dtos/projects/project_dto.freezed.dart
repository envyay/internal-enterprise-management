// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProjectDto {

 String? get id; String? get name; String? get description; String? get code; int? get status; DateTime? get startDate; DateTime? get endDate; List<UserDto>? get users; List<TicketStatusDto>? get ticketStatuses;
/// Create a copy of ProjectDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectDtoCopyWith<ProjectDto> get copyWith => _$ProjectDtoCopyWithImpl<ProjectDto>(this as ProjectDto, _$identity);

  /// Serializes this ProjectDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.code, code) || other.code == code)&&(identical(other.status, status) || other.status == status)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other.users, users)&&const DeepCollectionEquality().equals(other.ticketStatuses, ticketStatuses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,code,status,startDate,endDate,const DeepCollectionEquality().hash(users),const DeepCollectionEquality().hash(ticketStatuses));

@override
String toString() {
  return 'ProjectDto(id: $id, name: $name, description: $description, code: $code, status: $status, startDate: $startDate, endDate: $endDate, users: $users, ticketStatuses: $ticketStatuses)';
}


}

/// @nodoc
abstract mixin class $ProjectDtoCopyWith<$Res>  {
  factory $ProjectDtoCopyWith(ProjectDto value, $Res Function(ProjectDto) _then) = _$ProjectDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? description, String? code, int? status, DateTime? startDate, DateTime? endDate, List<UserDto>? users, List<TicketStatusDto>? ticketStatuses
});




}
/// @nodoc
class _$ProjectDtoCopyWithImpl<$Res>
    implements $ProjectDtoCopyWith<$Res> {
  _$ProjectDtoCopyWithImpl(this._self, this._then);

  final ProjectDto _self;
  final $Res Function(ProjectDto) _then;

/// Create a copy of ProjectDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? code = freezed,Object? status = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? users = freezed,Object? ticketStatuses = freezed,}) {
  return _then(ProjectDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserDto>?,ticketStatuses: freezed == ticketStatuses ? _self.ticketStatuses : ticketStatuses // ignore: cast_nullable_to_non_nullable
as List<TicketStatusDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProjectDto].
extension ProjectDtoPatterns on ProjectDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProjectDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProjectDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProjectDto value)  $default,){
final _that = this;
switch (_that) {
case _ProjectDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProjectDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProjectDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? description,  String? code,  int? status,  DateTime? startDate,  DateTime? endDate,  List<UserDto>? users,  List<TicketStatusDto>? ticketStatuses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProjectDto() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.code,_that.status,_that.startDate,_that.endDate,_that.users,_that.ticketStatuses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? description,  String? code,  int? status,  DateTime? startDate,  DateTime? endDate,  List<UserDto>? users,  List<TicketStatusDto>? ticketStatuses)  $default,) {final _that = this;
switch (_that) {
case _ProjectDto():
return $default(_that.id,_that.name,_that.description,_that.code,_that.status,_that.startDate,_that.endDate,_that.users,_that.ticketStatuses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? description,  String? code,  int? status,  DateTime? startDate,  DateTime? endDate,  List<UserDto>? users,  List<TicketStatusDto>? ticketStatuses)?  $default,) {final _that = this;
switch (_that) {
case _ProjectDto() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.code,_that.status,_that.startDate,_that.endDate,_that.users,_that.ticketStatuses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProjectDto implements ProjectDto {
  const _ProjectDto({required this.id, required this.name, required this.description, required this.code, required this.status, required this.startDate, required this.endDate, required  List<UserDto>? users, required  List<TicketStatusDto>? ticketStatuses}): _users = users,_ticketStatuses = ticketStatuses;
  factory _ProjectDto.fromJson(Map<String, dynamic> json) => _$ProjectDtoFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? description;
@override final  String? code;
@override final  int? status;
@override final  DateTime? startDate;
@override final  DateTime? endDate;
 final  List<UserDto>? _users;
@override List<UserDto>? get users {
  final value = _users;
  if (value == null) return null;
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TicketStatusDto>? _ticketStatuses;
@override List<TicketStatusDto>? get ticketStatuses {
  final value = _ticketStatuses;
  if (value == null) return null;
  if (_ticketStatuses is EqualUnmodifiableListView) return _ticketStatuses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ProjectDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectDtoCopyWith<_ProjectDto> get copyWith => __$ProjectDtoCopyWithImpl<_ProjectDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.code, code) || other.code == code)&&(identical(other.status, status) || other.status == status)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other._users, _users)&&const DeepCollectionEquality().equals(other._ticketStatuses, _ticketStatuses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,code,status,startDate,endDate,const DeepCollectionEquality().hash(_users),const DeepCollectionEquality().hash(_ticketStatuses));

@override
String toString() {
  return 'ProjectDto(id: $id, name: $name, description: $description, code: $code, status: $status, startDate: $startDate, endDate: $endDate, users: $users, ticketStatuses: $ticketStatuses)';
}


}

/// @nodoc
abstract mixin class _$ProjectDtoCopyWith<$Res> implements $ProjectDtoCopyWith<$Res> {
  factory _$ProjectDtoCopyWith(_ProjectDto value, $Res Function(_ProjectDto) _then) = __$ProjectDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? description, String? code, int? status, DateTime? startDate, DateTime? endDate, List<UserDto>? users, List<TicketStatusDto>? ticketStatuses
});




}
/// @nodoc
class __$ProjectDtoCopyWithImpl<$Res>
    implements _$ProjectDtoCopyWith<$Res> {
  __$ProjectDtoCopyWithImpl(this._self, this._then);

  final _ProjectDto _self;
  final $Res Function(_ProjectDto) _then;

/// Create a copy of ProjectDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? code = freezed,Object? status = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? users = freezed,Object? ticketStatuses = freezed,}) {
  return _then(_ProjectDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,users: freezed == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserDto>?,ticketStatuses: freezed == ticketStatuses ? _self._ticketStatuses : ticketStatuses // ignore: cast_nullable_to_non_nullable
as List<TicketStatusDto>?,
  ));
}


}

// dart format on
