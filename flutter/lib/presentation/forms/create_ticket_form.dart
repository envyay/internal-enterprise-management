import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:formz/formz.dart';

class CreateTicketForm with FormzMixin {
  final NameInput title;
  final DescriptionInput description;
  final List<User> users;
  final FormzSubmissionStatus status;

  const CreateTicketForm({this.title = const NameInput
      .pure(), this.description = const DescriptionInput
      .pure(), this.status = FormzSubmissionStatus.initial, this.users = const []});

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [title, description];

  CreateTicketForm copyWith({NameInput? title, DescriptionInput? description, FormzSubmissionStatus? status, List<User>? users}) {
    return CreateTicketForm(title: title ?? this.title, description: description ?? this.description, status: status ?? this.status, users: users ?? this.users);
  }
}