import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:formz/formz.dart';

class EditTicketStatusForm with FormzMixin {
  final NameInput name;
  final FormzSubmissionStatus status;

  const EditTicketStatusForm({this.name = const NameInput.pure(), this.status = FormzSubmissionStatus.initial});

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [name];

  EditTicketStatusForm copyWith({NameInput? name, FormzSubmissionStatus? status}) {
    return EditTicketStatusForm(name: name ?? this.name, status: status ?? this.status);
  }
}