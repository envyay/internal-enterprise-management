// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(departmentRemote)
final departmentRemoteProvider = DepartmentRemoteProvider._();

final class DepartmentRemoteProvider
    extends
        $FunctionalProvider<
          DepartmentRemoteDataSource,
          DepartmentRemoteDataSource,
          DepartmentRemoteDataSource
        >
    with $Provider<DepartmentRemoteDataSource> {
  DepartmentRemoteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'departmentRemoteProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$departmentRemoteHash();

  @$internal
  @override
  $ProviderElement<DepartmentRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DepartmentRemoteDataSource create(Ref ref) {
    return departmentRemote(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DepartmentRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DepartmentRemoteDataSource>(value),
    );
  }
}

String _$departmentRemoteHash() => r'bce9597110778abfe2e2c56af60df4cdad2c54aa';
