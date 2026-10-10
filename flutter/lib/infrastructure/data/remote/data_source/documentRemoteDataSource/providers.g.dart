// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(documentRemote)
final documentRemoteProvider = DocumentRemoteProvider._();

final class DocumentRemoteProvider
    extends
        $FunctionalProvider<
          DocumentRemoteDataSource,
          DocumentRemoteDataSource,
          DocumentRemoteDataSource
        >
    with $Provider<DocumentRemoteDataSource> {
  DocumentRemoteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'documentRemoteProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$documentRemoteHash();

  @$internal
  @override
  $ProviderElement<DocumentRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DocumentRemoteDataSource create(Ref ref) {
    return documentRemote(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DocumentRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DocumentRemoteDataSource>(value),
    );
  }
}

String _$documentRemoteHash() => r'91fdb166ac8cf54686f460aec5dc45fcf24f1c03';
