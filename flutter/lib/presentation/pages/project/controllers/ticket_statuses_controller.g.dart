// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_statuses_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TicketStatusesController)
final ticketStatusesControllerProvider = TicketStatusesControllerProvider._();

final class TicketStatusesControllerProvider
    extends
        $AsyncNotifierProvider<TicketStatusesController, List<TicketStatus>> {
  TicketStatusesControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ticketStatusesControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ticketStatusesControllerHash();

  @$internal
  @override
  TicketStatusesController create() => TicketStatusesController();
}

String _$ticketStatusesControllerHash() =>
    r'51424a67f273b38410080951675840ad98a43747';

abstract class _$TicketStatusesController
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
