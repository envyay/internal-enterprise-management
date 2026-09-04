import 'package:enterprise_management/application/use_cases/mediator_registration.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> setupApp({required ProviderContainer container}) async {
  WidgetsFlutterBinding.ensureInitialized();

  /// CQRS Mediator initialization
  final mediator = container.read(mediatorProvider);
  mediator.registerApplicationHandlers();
}