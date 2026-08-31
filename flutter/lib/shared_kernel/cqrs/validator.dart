import 'dart:async';

abstract class IValidator<TRequest> {
  const IValidator();

  bool canValidate(dynamic request) => request is TRequest;

  /// Validate the given request asynchronously or synchronously.
  /// Returns a list of validation error messages, or an empty list if valid.
  FutureOr<List<String>> validate(TRequest request);
}
