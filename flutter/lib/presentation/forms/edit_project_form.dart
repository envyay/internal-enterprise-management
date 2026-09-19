import 'package:enterprise_management/presentation/forms/inputs/code_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:formz/formz.dart';

class EditProjectForm with FormzMixin {
  final NameInput name;
  final DescriptionInput description;
  final CodeInput code;
  final FormzSubmissionStatus status;

  const EditProjectForm({
    this.name = const NameInput.pure(),
    this.description = const DescriptionInput.pure(),
    this.code = const CodeInput.pure(),
    this.status = FormzSubmissionStatus.initial,
  });

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [name, description, code];

  EditProjectForm copyWith({
    NameInput? name,
    DescriptionInput? description,
    CodeInput? code,
    FormzSubmissionStatus? status,
  }) {
    return EditProjectForm(
      name: name ?? this.name,
      description: description ?? this.description,
      code: code ?? this.code,
      status: status ?? this.status,
    );
  }
}
