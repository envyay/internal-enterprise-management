import 'package:enterprise_management/application/use_cases/documents/upload_document/upload_document_query.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resources_controller.g.dart';
@Riverpod()
class ResourcesController extends _$ResourcesController {
  @override
  dynamic build() {
    // TODO: implement build
    throw UnimplementedError();
  }

  Future<void> uploadDocument() async{
    final mediator = ref.read(mediatorProvider);
    await mediator.query(UploadDocumentQuery(referenceId: null, referenceType: 0));
  }
}