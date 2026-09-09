// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(projectRemote)
final projectRemoteProvider = ProjectRemoteProvider._();

final class ProjectRemoteProvider
    extends
        $FunctionalProvider<
          ProjectRemoteDataSource,
          ProjectRemoteDataSource,
          ProjectRemoteDataSource
        >
    with $Provider<ProjectRemoteDataSource> {
  ProjectRemoteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'projectRemoteProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$projectRemoteHash();

  @$internal
  @override
  $ProviderElement<ProjectRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProjectRemoteDataSource create(Ref ref) {
    return projectRemote(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProjectRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProjectRemoteDataSource>(value),
    );
  }
}

String _$projectRemoteHash() => r'6924504bbaaefdd532a0c8c0447889e825baf920';
