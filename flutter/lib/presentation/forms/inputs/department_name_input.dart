import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:formz/formz.dart';

enum DepartmentNameValidationError { empty, invalid }

extension EmailValidationErrorX on DepartmentNameValidationError {
  String get errorMessage => switch (this) {
    DepartmentNameValidationError.empty => 'Name cannot be empty',
    DepartmentNameValidationError.invalid => 'Name is invalid',
  };
}

class DepartmentNameInput extends FormzInput<String, DepartmentNameValidationError> {
  const DepartmentNameInput.pure() : super.pure('');

  const DepartmentNameInput.dirty([super.value = '']) : super.dirty();

  @override
  DepartmentNameValidationError? validator(String value) {
    if (value.trim().isEmpty) {
      return DepartmentNameValidationError.empty;
    }
    // if (!CommonValidationRules.isEmail(value)) {
    //   return DepartmentNameValidationError.invalid;
    // }
    return null;
  }
}
