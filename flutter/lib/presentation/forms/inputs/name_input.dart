import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:formz/formz.dart';

enum NameValidationError { empty, maxLength }

extension NameValidationErrorX on NameValidationError {
  String get errorMessage => switch (this) {
    NameValidationError.empty => 'Name cannot be empty',
    NameValidationError.maxLength => 'Name must be less than 100 characters',
  };
}

class NameInput extends FormzInput<String, NameValidationError> {
  const NameInput.pure() : super.pure('');

  const NameInput.dirty([super.value = '']) : super.dirty();

  @override
  NameValidationError? validator(String value) {
    if (value.trim().isEmpty) {
      return NameValidationError.empty;
    }

    if (value.trim().length > 100) {
      return NameValidationError.maxLength;
    }
    return null;
  }
}
