// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ticketRemote)
final ticketRemoteProvider = TicketRemoteProvider._();

final class TicketRemoteProvider
    extends
        $FunctionalProvider<
          TicketRemoteDataSource,
          TicketRemoteDataSource,
          TicketRemoteDataSource
        >
    with $Provider<TicketRemoteDataSource> {
  TicketRemoteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ticketRemoteProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ticketRemoteHash();

  @$internal
  @override
  $ProviderElement<TicketRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TicketRemoteDataSource create(Ref ref) {
    return ticketRemote(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TicketRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TicketRemoteDataSource>(value),
    );
  }
}

String _$ticketRemoteHash() => r'1aa5b626488c7e72644351c7e2f2242b35a73459';
