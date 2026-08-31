import 'dart:async';
import 'package:enterprise_management/shared_kernel/validation/common_rules.dart';
import 'package:enterprise_management/shared_kernel/validation/validation_error.dart';

abstract interface class IRuleBuilder<T, TProperty> {
  /// Ensures the property is not null.
  IRuleBuilder<T, TProperty> notNull({String? message});

  /// Ensures the property is not null and not empty (for String, Iterable, Map).
  IRuleBuilder<T, TProperty> notEmpty({String? message});

  /// Ensures the string property is a valid email address.
  IRuleBuilder<T, TProperty> email({String? message});

  /// Ensures the string/iterable property has at least [length] elements/characters.
  IRuleBuilder<T, TProperty> minLength(int length, {String? message});

  /// Ensures the string/iterable property has at most [length] elements/characters.
  IRuleBuilder<T, TProperty> maxLength(int length, {String? message});

  /// Ensures the string property matches the specified [pattern].
  IRuleBuilder<T, TProperty> matches(RegExp pattern, {String? message});

  /// Ensures the numeric property is strictly greater than [value].
  IRuleBuilder<T, TProperty> greaterThan(num value, {String? message});

  /// Ensures the numeric property is strictly less than [value].
  IRuleBuilder<T, TProperty> lessThan(num value, {String? message});

  /// Ensures the numeric property is between [min] and [max] (inclusive).
  IRuleBuilder<T, TProperty> inclusiveBetween(num min, num max, {String? message});

  /// Custom synchronous validation predicate.
  IRuleBuilder<T, TProperty> must(bool Function(TProperty value) predicate, {String? message});

  /// Custom asynchronous validation predicate.
  IRuleBuilder<T, TProperty> mustAsync(
    FutureOr<bool> Function(TProperty value) predicate, {
    String? message,
  });

  /// Applies the validation rules only if [condition] evaluates to true.
  IRuleBuilder<T, TProperty> when(bool Function(T instance) condition);

  /// Applies the validation rules only unless [condition] evaluates to true.
  IRuleBuilder<T, TProperty> unless(bool Function(T instance) condition);

  /// Sets custom error message for the preceding rule.
  IRuleBuilder<T, TProperty> withMessage(String message);
}

class _PropertyValidator<T, TProperty> {
  _PropertyValidator({
    required this.predicate,
    this.defaultMessage = 'Validation failed.',
  });

  final FutureOr<bool> Function(T instance, TProperty value) predicate;
  String defaultMessage;
  String? customMessage;

  String get message => customMessage ?? defaultMessage;
}

class PropertyRule<T, TProperty> implements IRuleBuilder<T, TProperty> {
  PropertyRule(this._selector, this._propertyName);

  final TProperty Function(T) _selector;
  final String? _propertyName;

  final List<_PropertyValidator<T, TProperty>> _validators = [];
  bool Function(T)? _whenCondition;
  bool Function(T)? _unlessCondition;

  _PropertyValidator<T, TProperty>? _lastAddedValidator;

  void _addValidator(
    FutureOr<bool> Function(T instance, TProperty value) predicate,
    String defaultMessage,
  ) {
    final validator = _PropertyValidator<T, TProperty>(
      predicate: predicate,
      defaultMessage: defaultMessage,
    );
    _validators.add(validator);
    _lastAddedValidator = validator;
  }

  @override
  IRuleBuilder<T, TProperty> withMessage(String message) {
    if (_lastAddedValidator != null) {
      _lastAddedValidator!.customMessage = message;
    }
    return this;
  }

  @override
  IRuleBuilder<T, TProperty> notNull({String? message}) {
    _addValidator(
      (instance, value) => value != null,
      message ?? 'Field ${_propertyName ?? ''} cannot be null.'.trim(),
    );
    return this;
  }

  @override
  IRuleBuilder<T, TProperty> notEmpty({String? message}) {
    _addValidator((instance, value) {
      if (value == null) return false;
      if (value is String) return value.trim().isNotEmpty;
      if (value is Iterable) return value.isNotEmpty;
      if (value is Map) return value.isNotEmpty;
      return true;
    }, message ?? 'Field ${_propertyName ?? ''} cannot be empty.'.trim());
    return this;
  }

  @override
  IRuleBuilder<T, TProperty> email({String? message}) {
    _addValidator(
      (instance, value) => CommonValidationRules.isEmail(value?.toString()),
      message ?? 'Field ${_propertyName ?? ''} is not a valid email address.'.trim(),
    );
    return this;
  }

  @override
  IRuleBuilder<T, TProperty> minLength(int length, {String? message}) {
    _addValidator((instance, value) {
      if (value == null) return false;
      if (value is String) return value.length >= length;
      if (value is Iterable) return value.length >= length;
      return false;
    }, message ?? 'Field ${_propertyName ?? ''} must be at least $length characters long.'.trim());
    return this;
  }

  @override
  IRuleBuilder<T, TProperty> maxLength(int length, {String? message}) {
    _addValidator((instance, value) {
      if (value == null) return true;
      if (value is String) return value.length <= length;
      if (value is Iterable) return value.length <= length;
      return true;
    }, message ?? 'Field ${_propertyName ?? ''} must be at most $length characters long.'.trim());
    return this;
  }

  @override
  IRuleBuilder<T, TProperty> matches(RegExp pattern, {String? message}) {
    _addValidator((instance, value) {
      if (value == null) return false;
      return pattern.hasMatch(value.toString());
    }, message ?? 'Field ${_propertyName ?? ''} is not in the correct format.'.trim());
    return this;
  }

  @override
  IRuleBuilder<T, TProperty> greaterThan(num value, {String? message}) {
    _addValidator((instance, propValue) {
      if (propValue is num) return propValue > value;
      return false;
    }, message ?? 'Field ${_propertyName ?? ''} must be greater than $value.'.trim());
    return this;
  }

  @override
  IRuleBuilder<T, TProperty> lessThan(num value, {String? message}) {
    _addValidator((instance, propValue) {
      if (propValue is num) return propValue < value;
      return false;
    }, message ?? 'Field ${_propertyName ?? ''} must be less than $value.'.trim());
    return this;
  }

  @override
  IRuleBuilder<T, TProperty> inclusiveBetween(num min, num max, {String? message}) {
    _addValidator((instance, propValue) {
      if (propValue is num) return propValue >= min && propValue <= max;
      return false;
    }, message ?? 'Field ${_propertyName ?? ''} must be between $min and $max.'.trim());
    return this;
  }

  @override
  IRuleBuilder<T, TProperty> must(bool Function(TProperty value) predicate, {String? message}) {
    _addValidator(
      (instance, value) => predicate(value),
      message ?? 'Field ${_propertyName ?? ''} is invalid.'.trim(),
    );
    return this;
  }

  @override
  IRuleBuilder<T, TProperty> mustAsync(
    FutureOr<bool> Function(TProperty value) predicate, {
    String? message,
  }) {
    _addValidator(
      (instance, value) => predicate(value),
      message ?? 'Field ${_propertyName ?? ''} is invalid.'.trim(),
    );
    return this;
  }

  @override
  IRuleBuilder<T, TProperty> when(bool Function(T instance) condition) {
    _whenCondition = condition;
    return this;
  }

  @override
  IRuleBuilder<T, TProperty> unless(bool Function(T instance) condition) {
    _unlessCondition = condition;
    return this;
  }

  Future<List<ValidationError>> validate(T instance) async {
    if (_whenCondition != null && !_whenCondition!(instance)) {
      return const [];
    }
    if (_unlessCondition != null && _unlessCondition!(instance)) {
      return const [];
    }

    final value = _selector(instance);
    final errors = <ValidationError>[];

    for (final validator in _validators) {
      final isValid = await validator.predicate(instance, value);
      if (!isValid) {
        errors.add(
          ValidationError(
            propertyName: _propertyName,
            errorMessage: validator.message,
            attemptedValue: value,
          ),
        );
      }
    }

    return errors;
  }
}
