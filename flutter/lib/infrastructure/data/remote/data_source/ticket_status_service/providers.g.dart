// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ticketStatusRemote)
final ticketStatusRemoteProvider = TicketStatusRemoteProvider._();

final class TicketStatusRemoteProvider
    extends
        $FunctionalProvider<
          TicketStatusRemoteDataSource,
          TicketStatusRemoteDataSource,
          TicketStatusRemoteDataSource
        >
    with $Provider<TicketStatusRemoteDataSource> {
  TicketStatusRemoteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ticketStatusRemoteProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ticketStatusRemoteHash();

  @$internal
  @override
  $ProviderElement<TicketStatusRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TicketStatusRemoteDataSource create(Ref ref) {
    return ticketStatusRemote(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TicketStatusRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TicketStatusRemoteDataSource>(value),
    );
  }
}

String _$ticketStatusRemoteHash() =>
    r'cc25dfa3cb73bedafd23e584a9da6265d1c2dadc';
