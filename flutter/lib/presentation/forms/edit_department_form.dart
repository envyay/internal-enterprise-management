import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:formz/formz.dart';

class EditDepartmentForm with FormzMixin {
  final NameInput name;
  final String head;
  final FormzSubmissionStatus status;

  const EditDepartmentForm({this.name = const NameInput.pure(), this.head = '', this.status = FormzSubmissionStatus.initial});

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [name];

  EditDepartmentForm copyWith({NameInput? name, String? head, FormzSubmissionStatus? status}) {
    return EditDepartmentForm(name: name ?? this.name, head: head ?? this.head, status: status ?? this.status);
  }
}