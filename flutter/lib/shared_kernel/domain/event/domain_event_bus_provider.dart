import 'dart:async';

import 'package:enterprise_management/shared_kernel/domain/event/domain_event_bus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'domain_event_bus_provider.g.dart';

@Riverpod(keepAlive: true)
DomainEventBus eventBus(Ref ref) {
  final bus = DomainEventBus();
  ref.onDispose(() {
    unawaited(bus.dispose());
  });
  return bus;
}