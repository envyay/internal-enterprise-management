import 'package:enterprise_management/presentation/bootstrap/bootstrap.dart';
import 'package:enterprise_management/presentation/settings/development_settings.dart';

void main() async {
  await bootstrap(settings: DevelopmentSettings());
}