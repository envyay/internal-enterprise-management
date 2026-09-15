import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/data/remote/http_clients/interceptors/auth_interceptor.dart';
import 'package:enterprise_management/presentation/settings/app_settings.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_dio.g.dart';

@Riverpod(keepAlive: true)
Dio appDio(Ref ref) {
  final appSettings = ref.read(appSettingsProvider);

  final dio = Dio(BaseOptions(baseUrl: appSettings.baseUrl));
  dio.interceptors.add(AuthInterceptor(ref: ref));
  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: false,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
      enabled: kDebugMode,
    ),
  );

  return dio;
}
