import 'dart:async';

import 'package:enterprise_management/shared_kernel/cqrs/validator.dart';
import 'package:enterprise_management/shared_kernel/validation/rule_builder.dart';
import 'package:enterprise_management/shared_kernel/validation/validation_error.dart';

abstract class AbstractValidator<T> extends IValidator<T> {
  AbstractValidator();

  final List<PropertyRule<T, dynamic>> _rules = [];

  /// Defines a validation rule for a specific property of [T].
  IRuleBuilder<T, TProperty> ruleFor<TProperty>(
    TProperty Function(T instance) selector, {
    String? propertyName,
  }) {
    final rule = PropertyRule<T, TProperty>(selector, propertyName);
    _rules.add(rule);
    return rule;
  }

  /// Validates the given [request] against all registered rules.
  /// Returns a detailed list of [ValidationError].
  Future<List<ValidationError>> validateDetails(T request) async {
    final errors = <ValidationError>[];
    for (final rule in _rules) {
      final ruleErrors = await rule.validate(request);
      errors.addAll(ruleErrors);
    }
    return errors;
  }

  /// Implements [IValidator.validate] returning string error messages.
  @override
  Future<List<String>> validate(T request) async {
    final details = await validateDetails(request);
    return details.map((e) => e.errorMessage).toList();
  }
}
