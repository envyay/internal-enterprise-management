import 'package:formz/formz.dart';

enum DescriptionValidationError { empty, maxLength}

extension DescriptionValidationErrorX on DescriptionValidationError {
  String get errorMessage => switch (this) {
  DescriptionValidationError.empty => 'Description can not be empty',
  DescriptionValidationError.maxLength => 'Description must be less than 1000 characters'
  };
}

class DescriptionInput extends FormzInput<String, DescriptionValidationError> {
  const DescriptionInput.pure() : super.pure('');
  const DescriptionInput.dirty([super.value = '']) : super.dirty();

  @override
  DescriptionValidationError? validator(String value) {
    if (value.trim().isEmpty) {
      return DescriptionValidationError.empty;
    }
    if (value.trim().length > 1000) {
      return DescriptionValidationError.maxLength;
    }
    return null;
  }
}