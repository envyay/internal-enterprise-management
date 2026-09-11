// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(commentRemote)
final commentRemoteProvider = CommentRemoteProvider._();

final class CommentRemoteProvider
    extends
        $FunctionalProvider<
          CommentRemoteDataSource,
          CommentRemoteDataSource,
          CommentRemoteDataSource
        >
    with $Provider<CommentRemoteDataSource> {
  CommentRemoteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'commentRemoteProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$commentRemoteHash();

  @$internal
  @override
  $ProviderElement<CommentRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CommentRemoteDataSource create(Ref ref) {
    return commentRemote(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CommentRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CommentRemoteDataSource>(value),
    );
  }
}

String _$commentRemoteHash() => r'3f63f4c8175b5429fa836644c3461c04c8c5a590';
