// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ticket_status_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GetTicketStatusController)
final getTicketStatusControllerProvider = GetTicketStatusControllerProvider._();

final class GetTicketStatusControllerProvider
    extends $AsyncNotifierProvider<GetTicketStatusController, TicketStatus?> {
  GetTicketStatusControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getTicketStatusControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getTicketStatusControllerHash();

  @$internal
  @override
  GetTicketStatusController create() => GetTicketStatusController();
}

String _$getTicketStatusControllerHash() =>
    r'83e63b3c0eb38afee13721b9018c66b2cecd7ae8';

abstract class _$GetTicketStatusController
    extends $AsyncNotifier<TicketStatus?> {
  FutureOr<TicketStatus?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<TicketStatus?>, TicketStatus?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TicketStatus?>, TicketStatus?>,
              AsyncValue<TicketStatus?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
