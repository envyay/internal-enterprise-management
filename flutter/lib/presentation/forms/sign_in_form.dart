import 'package:enterprise_management/presentation/forms/inputs/email_input.dart';
import 'package:formz/formz.dart';

class SignInForm with FormzMixin {
  final EmailInput email;
  final FormzSubmissionStatus status;

  const SignInForm({this.email = const EmailInput.pure(), this.status = FormzSubmissionStatus.initial});

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [email];

  SignInForm copyWith({EmailInput? email, FormzSubmissionStatus? status}) {
    return SignInForm(email: email ?? this.email, status: status ?? this.status);
  }
}
