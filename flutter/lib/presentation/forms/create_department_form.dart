import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:formz/formz.dart';

class CreateDepartmentForm with FormzMixin {
  final NameInput name;
  final FormzSubmissionStatus status;

  const CreateDepartmentForm({this.name = const NameInput.pure(), this.status = FormzSubmissionStatus.initial});

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [name];

  CreateDepartmentForm copyWith({NameInput? name, FormzSubmissionStatus? status}) {
    return CreateDepartmentForm(name: name ?? this.name, status: status ?? this.status);
  }
}
