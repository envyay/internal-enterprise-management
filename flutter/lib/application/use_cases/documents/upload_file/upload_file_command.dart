import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_file_command.freezed.dart';
@freezed
abstract class UploadFilesCommand with _$UploadFilesCommand implements ICommand<bool> {
  const factory UploadFilesCommand({
    required List<Document> files,
    required String referenceId,
    required int referenceType,
  }) = _UploadFilesCommand;
}