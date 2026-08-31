// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
ApiResponse<T> _$ApiResponseFromJson<T>(
  Map<String, dynamic> json,T Function(Object?) fromJsonT
) {
    return ApiResponseData<T>.fromJson(
      json,fromJsonT
    );
}

/// @nodoc
mixin _$ApiResponse<T> {

 int? get statusCode; bool? get success; T get data;
/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseCopyWith<T, ApiResponse<T>> get copyWith => _$ApiResponseCopyWithImpl<T, ApiResponse<T>>(this as ApiResponse<T>, _$identity);

  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponse<T>&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ApiResponse<$T>(statusCode: $statusCode, success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ApiResponseCopyWith<T,$Res>  {
  factory $ApiResponseCopyWith(ApiResponse<T> value, $Res Function(ApiResponse<T>) _then) = _$ApiResponseCopyWithImpl;
@useResult
$Res call({
 int? statusCode, bool? success, T data
});




}
/// @nodoc
class _$ApiResponseCopyWithImpl<T,$Res>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._self, this._then);

  final ApiResponse<T> _self;
  final $Res Function(ApiResponse<T>) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = freezed,Object? success = freezed,Object? data = freezed,}) {
  return _then(ApiResponse.data(
freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiResponse].
extension ApiResponsePatterns<T> on ApiResponse<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ApiResponseData<T> value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ApiResponseData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ApiResponseData<T> value)  data,}){
final _that = this;
switch (_that) {
case ApiResponseData():
return data(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ApiResponseData<T> value)?  data,}){
final _that = this;
switch (_that) {
case ApiResponseData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? statusCode,  bool? success,  T data)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ApiResponseData() when data != null:
return data(_that.statusCode,_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? statusCode,  bool? success,  T data)  data,}) {final _that = this;
switch (_that) {
case ApiResponseData():
return data(_that.statusCode,_that.success,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? statusCode,  bool? success,  T data)?  data,}) {final _that = this;
switch (_that) {
case ApiResponseData() when data != null:
return data(_that.statusCode,_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class ApiResponseData<T> implements ApiResponse<T> {
  const ApiResponseData(this.statusCode, this.success, this.data);
  factory ApiResponseData.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ApiResponseDataFromJson(json,fromJsonT);

@override final  int? statusCode;
@override final  bool? success;
@override final  T data;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseDataCopyWith<T, ApiResponseData<T>> get copyWith => _$ApiResponseDataCopyWithImpl<T, ApiResponseData<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ApiResponseDataToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseData<T>&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ApiResponse<$T>.data(statusCode: $statusCode, success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ApiResponseDataCopyWith<T,$Res> implements $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseDataCopyWith(ApiResponseData<T> value, $Res Function(ApiResponseData<T>) _then) = _$ApiResponseDataCopyWithImpl;
@override @useResult
$Res call({
 int? statusCode, bool? success, T data
});




}
/// @nodoc
class _$ApiResponseDataCopyWithImpl<T,$Res>
    implements $ApiResponseDataCopyWith<T, $Res> {
  _$ApiResponseDataCopyWithImpl(this._self, this._then);

  final ApiResponseData<T> _self;
  final $Res Function(ApiResponseData<T>) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? success = freezed,Object? data = freezed,}) {
  return _then(ApiResponseData<T>(
freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
