import 'package:enterprise_management/presentation/forms/inputs/code_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:formz/formz.dart';

class EditProjectForm with FormzMixin {
  final NameInput name;
  final DescriptionInput description;
  final CodeInput code;
  final int projectStatus;
  final DateTime? startDate;
  final DateTime? endDate;
  final FormzSubmissionStatus status;

  const EditProjectForm({
    this.name = const NameInput.pure(),
    this.description = const DescriptionInput.pure(),
    this.code = const CodeInput.pure(),
    this.projectStatus = 1,
    this.startDate,
    this.endDate,
    this.status = FormzSubmissionStatus.initial,
  });

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [name, description, code];

  EditProjectForm copyWith({
    NameInput? name,
    DescriptionInput? description,
    CodeInput? code,
    int? projectStatus,
    DateTime? startDate,
    DateTime? endDate,
    bool clearStartDate = false,
    bool clearEndDate = false,
    FormzSubmissionStatus? status,
  }) {
    return EditProjectForm(
      name: name ?? this.name,
      description: description ?? this.description,
      code: code ?? this.code,
      projectStatus: projectStatus ?? this.projectStatus,
      startDate: clearStartDate ? null : (startDate ?? this.startDate),
      endDate: clearEndDate ? null : (endDate ?? this.endDate),
      status: status ?? this.status,
    );
  }
}
