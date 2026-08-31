// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mediator.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(mediator)
final mediatorProvider = MediatorProvider._();

final class MediatorProvider
    extends $FunctionalProvider<Mediator, Mediator, Mediator>
    with $Provider<Mediator> {
  MediatorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mediatorProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mediatorHash();

  @$internal
  @override
  $ProviderElement<Mediator> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Mediator create(Ref ref) {
    return mediator(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Mediator value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Mediator>(value),
    );
  }
}

String _$mediatorHash() => r'98076f3efe6abc3c0248ecb9eb4786f5525f2012';
