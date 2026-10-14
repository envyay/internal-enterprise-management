// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_attachment_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TicketAttachmentController)
final ticketAttachmentControllerProvider = TicketAttachmentControllerFamily._();

final class TicketAttachmentControllerProvider
    extends $AsyncNotifierProvider<TicketAttachmentController, List<Document>> {
  TicketAttachmentControllerProvider._({
    required TicketAttachmentControllerFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'ticketAttachmentControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$ticketAttachmentControllerHash();

  @override
  String toString() {
    return r'ticketAttachmentControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TicketAttachmentController create() => TicketAttachmentController();

  @override
  bool operator ==(Object other) {
    return other is TicketAttachmentControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$ticketAttachmentControllerHash() =>
    r'0c6d9d76eb5e56d371cdc7838323eb3ad70e2491';

final class TicketAttachmentControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          TicketAttachmentController,
          AsyncValue<List<Document>>,
          List<Document>,
          FutureOr<List<Document>>,
          String?
        > {
  TicketAttachmentControllerFamily._()
    : super(
        retry: null,
        name: r'ticketAttachmentControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TicketAttachmentControllerProvider call({String? ticketId}) =>
      TicketAttachmentControllerProvider._(argument: ticketId, from: this);

  @override
  String toString() => r'ticketAttachmentControllerProvider';
}

abstract class _$TicketAttachmentController
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
