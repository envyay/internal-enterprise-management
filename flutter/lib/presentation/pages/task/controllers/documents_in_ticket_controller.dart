import 'package:enterprise_management/application/use_cases/documents/get_documents_by_ticket/get_documents_by_ticket_query.dart';
import 'package:enterprise_management/application/use_cases/documents/upload_document/upload_document_query.dart';
import 'package:enterprise_management/application/use_cases/documents/upload_file/upload_file_command.dart';
import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/shared_kernel/constant/constants.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'documents_in_ticket_controller.g.dart';
@Riverpod()
class DocumentsInTicketController extends _$DocumentsInTicketController {
  @override
  Future<List<Document>> build({String? ticketId}) async {
    if (ticketId == null) return [];

    return getDocumentsByTicket(ticketId: ticketId);
  }

  Future<List<Document>> getDocumentsByTicket({required String ticketId}) async{
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetDocumentsByTicketQuery(ticketId: ticketId));
    return res.when(success: (List<Document> data){
      state = AsyncData(data);
      return data;
    }, failure: (AppFailure failure){
      state = AsyncError(failure, StackTrace.current);
      return [];
    });
  }

  Future<void> uploadDocument({required String referenceId, required List<Document> files}) async {
    final mediator = ref.read(mediatorProvider);
    await mediator.send(
      UploadFilesCommand(files: files, referenceId: referenceId, referenceType: DocumentReferenceType.ticket.index)
    );
  }

  void refresh({required String ticketId}) async {
    final data = await getDocumentsByTicket(ticketId: ticketId);
    state = AsyncValue.data(data);
  }
}