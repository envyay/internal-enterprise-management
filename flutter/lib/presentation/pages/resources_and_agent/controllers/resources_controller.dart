import 'package:enterprise_management/application/use_cases/documents/get_documents/get_documents_query.dart';
import 'package:enterprise_management/application/use_cases/documents/upload_document/upload_document_query.dart';
import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resources_controller.g.dart';

@Riverpod()
class ResourcesController extends _$ResourcesController {
  @override
  Future<List<Document>> build() {
    return getDocuments();
  }

  Future<List<Document>> getDocuments() async {
    final mediator = ref.read(mediatorProvider);
    state = AsyncLoading();
    final res = await mediator.query(GetDocumentsQuery());
    return res.when(
      success: (List<Document> data) {
        state = AsyncData(data);
        return data;
      },
      failure: (AppFailure failure) {
        state = AsyncError(failure, StackTrace.current);
        return [];
      },
    );
  }

  Future<void> uploadDocument() async {
    final mediator = ref.read(mediatorProvider);
    await mediator.query(
      UploadDocumentQuery(referenceId: null, referenceType: 0),
    );
    refresh();
  }

  void refresh() async {
    final data = await getDocuments();
    state = AsyncValue.data(data);
  }
}
