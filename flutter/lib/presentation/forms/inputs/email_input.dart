import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:formz/formz.dart';

enum EmailValidationError { empty, invalid }

extension EmailValidationErrorX on EmailValidationError {
  String get errorMessage => switch (this) {
    EmailValidationError.empty => 'Email cannot be empty',
    EmailValidationError.invalid => 'Email is invalid',
  };
}

class EmailInput extends FormzInput<String, EmailValidationError> {
  const EmailInput.pure() : super.pure('');

  const EmailInput.dirty([super.value = '']) : super.dirty();

  @override
  EmailValidationError? validator(String value) {
    if (value.trim().isEmpty) {
      return EmailValidationError.empty;
    }
    if (!CommonValidationRules.isEmail(value)) {
      return EmailValidationError.invalid;
    }
    return null;
  }
}
