import 'package:enterprise_management/application/use_cases/documents/get_documents_by_departments/get_documents_by_departments_query.dart';
import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resources_in_departments_controller.g.dart';
@Riverpod()
class ResourcesInDepartmentsController extends _$ResourcesInDepartmentsController {
  @override
  Future<List<Document>> build() async {
    return getDocumentsByDepartments();
  }

  Future<List<Document>> getDocumentsByDepartments() async{
    final mediator = ref.read(mediatorProvider);
    state = AsyncLoading();
    final res = await mediator.query(GetDocumentsByDepartmentsQuery());
    return res.when(success: (List<Document> data){
      state = AsyncData(data);
      return data;
    }, failure: (AppFailure failure){
      state = AsyncError(failure, StackTrace.current);
      return [];
    });
  }
}