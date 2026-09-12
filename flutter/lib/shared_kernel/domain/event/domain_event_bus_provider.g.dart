// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_event_bus_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(eventBus)
final eventBusProvider = EventBusProvider._();

final class EventBusProvider
    extends $FunctionalProvider<DomainEventBus, DomainEventBus, DomainEventBus>
    with $Provider<DomainEventBus> {
  EventBusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'eventBusProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$eventBusHash();

  @$internal
  @override
  $ProviderElement<DomainEventBus> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DomainEventBus create(Ref ref) {
    return eventBus(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DomainEventBus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DomainEventBus>(value),
    );
  }
}

String _$eventBusHash() => r'fa78ab9558dfd05a5a9012dad969c46eb115146f';
