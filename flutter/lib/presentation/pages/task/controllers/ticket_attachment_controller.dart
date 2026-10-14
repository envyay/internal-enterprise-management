import 'package:enterprise_management/application/use_cases/documents/get_documents_by_ticket/get_documents_by_ticket_query.dart';
import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'ticket_attachment_controller.g.dart';

@Riverpod()
class TicketAttachmentController extends _$TicketAttachmentController {
  @override
  Future<List<Document>> build({String? ticketId}) async {
    if (ticketId == null) return [];

    return getDocumentsByTicket(ticketId: ticketId);
  }

  Future<List<Document>> pickAttachment() async {
    final documentsDir = await getApplicationDocumentsDirectory();
    final files = await FilePicker.pickFiles(
      initialDirectory: documentsDir.path,
      type: FileType.custom,
      allowedExtensions: [
        'pdf',
        'docx',
        'xlsx',
        'xls',
        'html',
        'csv',
        'json',
        'xml',
      ],
    );

    final futures = files.map((x) async  {
      final objectName = '${Uuid().v7()}.${x.extension}';
      final size = await x.xFile.length();
      return Document(
        id: '',
        name: x.name,
        bucketName: '',
        objectName: objectName,
        size: size,
        status: 1,
        extension: x.extension ?? '',
        path: x.path ?? ''
      );
    });

    final documents = await Future.wait(futures);

    final current = state.value ?? [];
    final merged = [
      ...current,
      ...documents.where(
        (f) => !current.any((c) => c.name == f.name && c.path == f.path),
      ),
    ];
    state = AsyncData(merged);
    return merged;
  }

  void removeAttachment(Document doc) {
    if(doc.id.isEmpty) {
      state = AsyncData((state.value ?? []).where((f) => f != doc).toList());
    } else {
      /// goi API xoa doc,
      /// Refresh
    }
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

}
