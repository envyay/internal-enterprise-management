// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userRepository)
final userRepositoryProvider = UserRepositoryProvider._();

final class UserRepositoryProvider
    extends
        $FunctionalProvider<IUserRepository, IUserRepository, IUserRepository>
    with $Provider<IUserRepository> {
  UserRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userRepositoryHash();

  @$internal
  @override
  $ProviderElement<IUserRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  IUserRepository create(Ref ref) {
    return userRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IUserRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IUserRepository>(value),
    );
  }
}

String _$userRepositoryHash() => r'65b41b75578194bbd49bab687342a5c915958ac6';

@ProviderFor(departmentRepository)
final departmentRepositoryProvider = DepartmentRepositoryProvider._();

final class DepartmentRepositoryProvider
    extends
        $FunctionalProvider<
          IDepartmentRepository,
          IDepartmentRepository,
          IDepartmentRepository
        >
    with $Provider<IDepartmentRepository> {
  DepartmentRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'departmentRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$departmentRepositoryHash();

  @$internal
  @override
  $ProviderElement<IDepartmentRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IDepartmentRepository create(Ref ref) {
    return departmentRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IDepartmentRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IDepartmentRepository>(value),
    );
  }
}

String _$departmentRepositoryHash() =>
    r'b5e589b17301e6b3f6988f7830e8920826b2f335';
