import 'package:formz/formz.dart';

enum CodeValidationError {empty, maxLength}

extension CodeValidationErrorX on CodeValidationError {
  String get errorMessage => switch (this) {
  CodeValidationError.empty => 'Code can not be empty',
  CodeValidationError.maxLength => 'Code must be less than 50 character'
  };
}

class CodeInput extends FormzInput<String, CodeValidationError> {
  const CodeInput.pure() : super.pure('');
  const CodeInput.dirty([super.value = '']) : super.dirty();

  @override
  CodeValidationError? validator(String value) {
    if (value.trim().isEmpty) {
      return CodeValidationError.empty;
    }
    if (value.trim().length > 50) {
      return CodeValidationError.maxLength;
    }
    return null;
  }


}