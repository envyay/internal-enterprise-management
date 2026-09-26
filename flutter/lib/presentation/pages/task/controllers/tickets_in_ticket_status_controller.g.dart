// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_in_ticket_status_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TicketsInTicketStatusController)
final ticketsInTicketStatusControllerProvider =
    TicketsInTicketStatusControllerFamily._();

final class TicketsInTicketStatusControllerProvider
    extends
        $AsyncNotifierProvider<TicketsInTicketStatusController, List<Ticket>> {
  TicketsInTicketStatusControllerProvider._({
    required TicketsInTicketStatusControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'ticketsInTicketStatusControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$ticketsInTicketStatusControllerHash();

  @override
  String toString() {
    return r'ticketsInTicketStatusControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TicketsInTicketStatusController create() => TicketsInTicketStatusController();

  @override
  bool operator ==(Object other) {
    return other is TicketsInTicketStatusControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$ticketsInTicketStatusControllerHash() =>
    r'184dec25219f0d1aa2c0e76b972aece066dd74eb';

final class TicketsInTicketStatusControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          TicketsInTicketStatusController,
          AsyncValue<List<Ticket>>,
          List<Ticket>,
          FutureOr<List<Ticket>>,
          String
        > {
  TicketsInTicketStatusControllerFamily._()
    : super(
        retry: null,
        name: r'ticketsInTicketStatusControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TicketsInTicketStatusControllerProvider call(String ticketStatusId) =>
      TicketsInTicketStatusControllerProvider._(
        argument: ticketStatusId,
        from: this,
      );

  @override
  String toString() => r'ticketsInTicketStatusControllerProvider';
}

abstract class _$TicketsInTicketStatusController
    extends $AsyncNotifier<List<Ticket>> {
  late final _$args = ref.$arg as String;
  String get ticketStatusId => _$args;

  FutureOr<List<Ticket>> build(String ticketStatusId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Ticket>>, List<Ticket>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Ticket>>, List<Ticket>>,
              AsyncValue<List<Ticket>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
