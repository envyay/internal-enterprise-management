import 'package:enterprise_management/presentation/forms/inputs/email_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:formz/formz.dart';

class CreateUserForm with FormzMixin {
  final NameInput fullName;
  final EmailInput email;
  final FormzSubmissionStatus status;

  CreateUserForm({this.fullName = const NameInput.pure(), this.email = const EmailInput.pure(), this.status = FormzSubmissionStatus.initial});

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [fullName, email];

  CreateUserForm copyWith({NameInput? fullName, EmailInput? email, FormzSubmissionStatus? status}) {
    return CreateUserForm(fullName: fullName ?? this.fullName, email: email ?? this.email, status: status ?? this.status);
  }
}