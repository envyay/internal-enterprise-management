// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_dio.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appDio)
final appDioProvider = AppDioProvider._();

final class AppDioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  AppDioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDioProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return appDio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$appDioHash() => r'0b89ad74f06f606a1406a7f2e266e7e5564ce379';
