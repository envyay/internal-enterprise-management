import 'package:enterprise_management/application/use_cases/documents/get_documents_by_department/get_documents_by_department_query.dart';
import 'package:enterprise_management/application/use_cases/documents/upload_document/upload_document_query.dart';
import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/shared_kernel/constant/constants.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'documents_in_department_controller.g.dart';
@Riverpod()
class DocumentsInDepartmentController extends _$DocumentsInDepartmentController {
  @override
  Future<List<Document>> build() async {
    return [];
  }

  Future<List<Document>> getDocumentsByDepartment({required String departmentId}) async{
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetDocumentsByDepartmentQuery(departmentId: departmentId));
    return res.when(success: (List<Document> data){
      state = AsyncData(data);
      return data;
    }, failure: (AppFailure failure){
      state = AsyncError(failure, StackTrace.current);
      return [];
    });
  }

  Future<void> uploadDocument({required String referenceId}) async {
    final mediator = ref.read(mediatorProvider);
    await mediator.query(
      UploadDocumentQuery(referenceId: referenceId, referenceType: DocumentReferenceType.department.index),
    );
  }

  void refresh({required String departmentId}) async {
    final data = await getDocumentsByDepartment(departmentId: departmentId);
    state = AsyncValue.data(data);
  }
}