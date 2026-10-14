import 'package:enterprise_management/application/use_cases/documents/get_documents_by_tickets/get_documents_by_tickets_query.dart';
import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resources_in_tickets_controller.g.dart';
@Riverpod()
class ResourcesInTicketsController extends _$ResourcesInTicketsController {
  @override
  Future<List<Document>> build() async {
    return getDocumentsByTickets();
  }

  Future<List<Document>> getDocumentsByTickets() async{
    final mediator = ref.read(mediatorProvider);
    state = AsyncLoading();
    final res = await mediator.query(GetDocumentsByTicketsQuery());
    return res.when(success: (List<Document> data){
      state = AsyncData(data);
      return data;
    }, failure: (AppFailure failure){
      state = AsyncError(failure, StackTrace.current);
      return [];
    });
  }
}