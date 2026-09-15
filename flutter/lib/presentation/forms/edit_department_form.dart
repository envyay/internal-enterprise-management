import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:formz/formz.dart';

class EditDepartmentForm with FormzMixin {
  final NameInput name;
  final FormzSubmissionStatus status;

  const EditDepartmentForm({this.name = const NameInput.pure(), this.status = FormzSubmissionStatus.initial});

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [name];

  EditDepartmentForm copyWith({NameInput? name, FormzSubmissionStatus? status}) {
    return EditDepartmentForm(name: name ?? this.name, status: status ?? this.status);
  }
}