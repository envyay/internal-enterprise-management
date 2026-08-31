import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<T> with _$Result {
  const factory Result.success(T data) = Success<T>;

  const factory Result.failure(AppFailure failure) = Failure<T>;
}

@freezed
sealed class AppFailure with _$AppFailure {
  const factory AppFailure.server({required int statusCode, String? message}) = ServerFailure;

  const factory AppFailure.network([String? message]) = NetworkFailure;

  const factory AppFailure.business(String message) = BusinessFailure;

  const factory AppFailure.validation(List<String> errors) = ValidationFailure;

  const factory AppFailure.unexpected([Object? error]) = UnexpectedFailure;
}
