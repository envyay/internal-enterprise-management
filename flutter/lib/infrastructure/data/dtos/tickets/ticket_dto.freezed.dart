// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketDto {

 String get id; String get title; String get description; String get projectId; String get ticketStatusId; List<UserDto> get users; List<CommentDto> get comments;
/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketDtoCopyWith<TicketDto> get copyWith => _$TicketDtoCopyWithImpl<TicketDto>(this as TicketDto, _$identity);

  /// Serializes this TicketDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&(identical(other.ticketStatusId, ticketStatusId) || other.ticketStatusId == ticketStatusId)&&const DeepCollectionEquality().equals(other.users, users)&&const DeepCollectionEquality().equals(other.comments, comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,projectId,ticketStatusId,const DeepCollectionEquality().hash(users),const DeepCollectionEquality().hash(comments));

@override
String toString() {
  return 'TicketDto(id: $id, title: $title, description: $description, projectId: $projectId, ticketStatusId: $ticketStatusId, users: $users, comments: $comments)';
}


}

/// @nodoc
abstract mixin class $TicketDtoCopyWith<$Res>  {
  factory $TicketDtoCopyWith(TicketDto value, $Res Function(TicketDto) _then) = _$TicketDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String projectId, String ticketStatusId, List<UserDto> users, List<CommentDto> comments
});




}
/// @nodoc
class _$TicketDtoCopyWithImpl<$Res>
    implements $TicketDtoCopyWith<$Res> {
  _$TicketDtoCopyWithImpl(this._self, this._then);

  final TicketDto _self;
  final $Res Function(TicketDto) _then;

/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? projectId = null,Object? ticketStatusId = null,Object? users = null,Object? comments = null,}) {
  return _then(TicketDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String,ticketStatusId: null == ticketStatusId ? _self.ticketStatusId : ticketStatusId // ignore: cast_nullable_to_non_nullable
as String,users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserDto>,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketDto].
extension TicketDtoPatterns on TicketDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String projectId,  String ticketStatusId,  List<UserDto> users,  List<CommentDto> comments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketDto() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.projectId,_that.ticketStatusId,_that.users,_that.comments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String projectId,  String ticketStatusId,  List<UserDto> users,  List<CommentDto> comments)  $default,) {final _that = this;
switch (_that) {
case _TicketDto():
return $default(_that.id,_that.title,_that.description,_that.projectId,_that.ticketStatusId,_that.users,_that.comments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String projectId,  String ticketStatusId,  List<UserDto> users,  List<CommentDto> comments)?  $default,) {final _that = this;
switch (_that) {
case _TicketDto() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.projectId,_that.ticketStatusId,_that.users,_that.comments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketDto implements TicketDto {
  const _TicketDto({required this.id, required this.title, required this.description, required this.projectId, required this.ticketStatusId, required  List<UserDto> users, required  List<CommentDto> comments}): _users = users,_comments = comments;
  factory _TicketDto.fromJson(Map<String, dynamic> json) => _$TicketDtoFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String projectId;
@override final  String ticketStatusId;
 final  List<UserDto> _users;
@override List<UserDto> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

 final  List<CommentDto> _comments;
@override List<CommentDto> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}


/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketDtoCopyWith<_TicketDto> get copyWith => __$TicketDtoCopyWithImpl<_TicketDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&(identical(other.ticketStatusId, ticketStatusId) || other.ticketStatusId == ticketStatusId)&&const DeepCollectionEquality().equals(other._users, _users)&&const DeepCollectionEquality().equals(other._comments, _comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,projectId,ticketStatusId,const DeepCollectionEquality().hash(_users),const DeepCollectionEquality().hash(_comments));

@override
String toString() {
  return 'TicketDto(id: $id, title: $title, description: $description, projectId: $projectId, ticketStatusId: $ticketStatusId, users: $users, comments: $comments)';
}


}

/// @nodoc
abstract mixin class _$TicketDtoCopyWith<$Res> implements $TicketDtoCopyWith<$Res> {
  factory _$TicketDtoCopyWith(_TicketDto value, $Res Function(_TicketDto) _then) = __$TicketDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String projectId, String ticketStatusId, List<UserDto> users, List<CommentDto> comments
});




}
/// @nodoc
class __$TicketDtoCopyWithImpl<$Res>
    implements _$TicketDtoCopyWith<$Res> {
  __$TicketDtoCopyWithImpl(this._self, this._then);

  final _TicketDto _self;
  final $Res Function(_TicketDto) _then;

/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? projectId = null,Object? ticketStatusId = null,Object? users = null,Object? comments = null,}) {
  return _then(_TicketDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,projectId: null == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String,ticketStatusId: null == ticketStatusId ? _self.ticketStatusId : ticketStatusId // ignore: cast_nullable_to_non_nullable
as String,users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserDto>,comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentDto>,
  ));
}


}

// dart format on
