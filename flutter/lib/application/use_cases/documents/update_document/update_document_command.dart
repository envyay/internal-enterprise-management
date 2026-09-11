import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_document_command.freezed.dart';
@freezed
abstract class UpdateDocumentCommand with _$UpdateDocumentCommand implements ICommand<bool> {
  const factory UpdateDocumentCommand({required String id, required String objectName}) = _UpdateDocumentCommand;
}