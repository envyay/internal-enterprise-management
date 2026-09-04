import 'package:dio/dio.dart';
import 'package:enterprise_management/presentation/settings/app_settings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_dio.g.dart';

@Riverpod(keepAlive: true)
Dio appDio(Ref ref) {
  final appSettings = ref.read(appSettingsProvider);

  final dio = Dio(BaseOptions(baseUrl: appSettings.baseUrl));
  return dio;
}
