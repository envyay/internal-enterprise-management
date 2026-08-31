import 'package:enterprise_management/presentation/settings/app_settings.dart';

class DevelopmentSettings implements AppSettings {
  @override
  String get baseUrl => 'http://localhost:5000';

  @override
  Environment get environment => .development;
}