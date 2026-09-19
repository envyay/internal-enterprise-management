import 'package:enterprise_management/presentation/forms/inputs/email_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:formz/formz.dart';

class EditUserForm with FormzMixin {
  final NameInput fullName;
  final EmailInput email;
  final FormzSubmissionStatus status;

  EditUserForm({this.fullName = const NameInput.pure(), this.email = const EmailInput.pure(), this.status = FormzSubmissionStatus.initial});

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [fullName, email];

  EditUserForm copyWith({NameInput? fullName, EmailInput? email, FormzSubmissionStatus? status}) {
    return EditUserForm(fullName: fullName ?? this.fullName, email: email ?? this.email, status: status ?? this.status);
  }
}