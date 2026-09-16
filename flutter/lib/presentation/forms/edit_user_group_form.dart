import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:formz/formz.dart';

class EditUserGroupForm with FormzMixin {
  final NameInput name;
  final FormzSubmissionStatus status;

  const EditUserGroupForm({this.name = const NameInput.pure(), this.status = FormzSubmissionStatus.initial});

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [name];

  EditUserGroupForm copyWith({NameInput? name, FormzSubmissionStatus? status}) {
    return EditUserGroupForm(name: name ?? this.name, status: status ?? this.status);
  }
}