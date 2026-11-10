// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documents_in_department_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DocumentsInDepartmentController)
final documentsInDepartmentControllerProvider =
    DocumentsInDepartmentControllerProvider._();

final class DocumentsInDepartmentControllerProvider
    extends
        $AsyncNotifierProvider<
          DocumentsInDepartmentController,
          List<Document>
        > {
  DocumentsInDepartmentControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'documentsInDepartmentControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$documentsInDepartmentControllerHash();

  @$internal
  @override
  DocumentsInDepartmentController create() => DocumentsInDepartmentController();
}

String _$documentsInDepartmentControllerHash() =>
    r'aff147c541439df35b1d4170f656a9029279ed41';

abstract class _$DocumentsInDepartmentController
    extends $AsyncNotifier<List<Document>> {
  FutureOr<List<Document>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Document>>, List<Document>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Document>>, List<Document>>,
              AsyncValue<List<Document>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
