import 'package:enterprise_management/presentation/settings/app_settings.dart';

class ProductionSettings implements AppSettings {
  @override
  String get baseUrl => 'http://localhost:5000';

  @override
  Environment get environment => .production;
}
