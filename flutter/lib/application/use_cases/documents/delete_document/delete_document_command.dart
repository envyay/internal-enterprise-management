import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_document_command.freezed.dart';
@freezed
abstract class DeleteDocumentCommand with _$DeleteDocumentCommand implements ICommand<bool> {
  const factory DeleteDocumentCommand({required String id}) = _DeleteDocumentCommand;
}