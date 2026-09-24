// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_statuses_in_project_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TicketStatusesInProjectController)
final ticketStatusesInProjectControllerProvider =
    TicketStatusesInProjectControllerProvider._();

final class TicketStatusesInProjectControllerProvider
    extends
        $AsyncNotifierProvider<
          TicketStatusesInProjectController,
          List<TicketStatus>
        > {
  TicketStatusesInProjectControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ticketStatusesInProjectControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$ticketStatusesInProjectControllerHash();

  @$internal
  @override
  TicketStatusesInProjectController create() =>
      TicketStatusesInProjectController();
}

String _$ticketStatusesInProjectControllerHash() =>
    r'0831edc71d95a92295f9d0a835a5d03a86e13147';

abstract class _$TicketStatusesInProjectController
    extends $AsyncNotifier<List<TicketStatus>> {
  FutureOr<List<TicketStatus>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<TicketStatus>>, List<TicketStatus>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<TicketStatus>>, List<TicketStatus>>,
              AsyncValue<List<TicketStatus>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
