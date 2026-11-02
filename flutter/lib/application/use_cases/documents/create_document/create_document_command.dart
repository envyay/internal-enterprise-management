import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_document_command.freezed.dart';
@freezed
abstract class CreateDocumentCommand with _$CreateDocumentCommand implements ICommand<String> {
  const factory CreateDocumentCommand({required String referenceId, required String objectName, required int size, required String extension}) = _CreateDocumentCommand;
}