// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userGroupRemote)
final userGroupRemoteProvider = UserGroupRemoteProvider._();

final class UserGroupRemoteProvider
    extends
        $FunctionalProvider<
          UserGroupRemoteDataSource,
          UserGroupRemoteDataSource,
          UserGroupRemoteDataSource
        >
    with $Provider<UserGroupRemoteDataSource> {
  UserGroupRemoteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userGroupRemoteProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userGroupRemoteHash();

  @$internal
  @override
  $ProviderElement<UserGroupRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UserGroupRemoteDataSource create(Ref ref) {
    return userGroupRemote(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserGroupRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserGroupRemoteDataSource>(value),
    );
  }
}

String _$userGroupRemoteHash() => r'3c9ff26407f6469076dc054974ddeae1d7a051b7';
