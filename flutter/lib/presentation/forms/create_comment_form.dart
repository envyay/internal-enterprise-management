import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:formz/formz.dart';

class CreateCommentForm with FormzMixin {
  final DescriptionInput content;
  final FormzSubmissionStatus status;

  const CreateCommentForm({this.content = const DescriptionInput.pure(), this.status = FormzSubmissionStatus.initial});

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [content];

  CreateCommentForm copyWith({DescriptionInput? content, FormzSubmissionStatus? status}) {
    return CreateCommentForm(content: content ?? this.content, status: status ?? this.status);
  }
}