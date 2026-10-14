// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documents_in_ticket_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DocumentsInTicketController)
final documentsInTicketControllerProvider =
    DocumentsInTicketControllerFamily._();

final class DocumentsInTicketControllerProvider
    extends
        $AsyncNotifierProvider<DocumentsInTicketController, List<Document>> {
  DocumentsInTicketControllerProvider._({
    required DocumentsInTicketControllerFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'documentsInTicketControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$documentsInTicketControllerHash();

  @override
  String toString() {
    return r'documentsInTicketControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  DocumentsInTicketController create() => DocumentsInTicketController();

  @override
  bool operator ==(Object other) {
    return other is DocumentsInTicketControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$documentsInTicketControllerHash() =>
    r'23c352db1ddbe296b1829620c6292331a9251f2c';

final class DocumentsInTicketControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          DocumentsInTicketController,
          AsyncValue<List<Document>>,
          List<Document>,
          FutureOr<List<Document>>,
          String?
        > {
  DocumentsInTicketControllerFamily._()
    : super(
        retry: null,
        name: r'documentsInTicketControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DocumentsInTicketControllerProvider call({String? ticketId}) =>
      DocumentsInTicketControllerProvider._(argument: ticketId, from: this);

  @override
  String toString() => r'documentsInTicketControllerProvider';
}

abstract class _$DocumentsInTicketController
    extends $AsyncNotifier<List<Document>> {
  late final _$args = ref.$arg as String?;
  String? get ticketId => _$args;

  FutureOr<List<Document>> build({String? ticketId});
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
    return element.handleCreate(ref, () => build(ticketId: _$args));
  }
}
