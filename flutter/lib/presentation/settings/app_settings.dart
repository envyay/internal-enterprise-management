import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Environment { development, production }

abstract interface class AppSettings {
  Environment get environment;

  String get baseUrl;
}

final appSettingsProvider = Provider<AppSettings>((ref) {
  throw UnimplementedError("Must be override");
});
