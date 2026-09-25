import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:formz/formz.dart';

class CreateTicketStatusForm with FormzMixin {
  final NameInput name;
  final FormzSubmissionStatus status;

  const CreateTicketStatusForm({this.name = const NameInput.pure(), this.status = FormzSubmissionStatus.initial});

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [name];

  CreateTicketStatusForm copyWith({NameInput? name, FormzSubmissionStatus? status}) {
    return CreateTicketStatusForm(name: name ?? this.name, status: status ?? this.status);
  }
}