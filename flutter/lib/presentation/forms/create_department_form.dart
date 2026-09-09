import 'package:enterprise_management/presentation/forms/inputs/department_name_input.dart';
import 'package:formz/formz.dart';

class CreateDepartmentForm with FormzMixin {
  final DepartmentNameInput name;
  final FormzSubmissionStatus status;

  const CreateDepartmentForm({this.name = const DepartmentNameInput.pure(), this.status = FormzSubmissionStatus.initial});

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [name];

  CreateDepartmentForm copyWith({DepartmentNameInput? name, FormzSubmissionStatus? status}) {
    return CreateDepartmentForm(name: name ?? this.name, status: status ?? this.status);
  }
}
