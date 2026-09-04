import 'dart:async';
import 'dart:developer';

import 'package:enterprise_management/presentation/app/app.dart';
import 'package:enterprise_management/presentation/bootstrap/setup_app.dart';
import 'package:enterprise_management/presentation/settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> bootstrap({required AppSettings settings}) async {
  await runZonedGuarded(() async {
    final container = ProviderContainer(overrides: [appSettingsProvider.overrideWithValue(settings)]);

    runApp(UncontrolledProviderScope(container: container, child: const App()));
    await setupApp(container: container);
  }, _onError);
}

void _onError(Object error, StackTrace stackTrace) {
  return log(error.toString(), stackTrace: stackTrace);
}