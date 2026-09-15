import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:formz/formz.dart';

class CreateUserGroupForm with FormzMixin {
  final NameInput name;
  final FormzSubmissionStatus status;

  const CreateUserGroupForm({this.name = const NameInput.pure(), this.status = FormzSubmissionStatus.initial});

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [name];

  CreateUserGroupForm copyWith({NameInput? name, FormzSubmissionStatus? status}) {
    return CreateUserGroupForm(name: name ?? this.name, status: status ?? this.status);
  }
}