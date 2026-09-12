import 'dart:async';

import 'package:enterprise_management/shared_kernel/domain/event/domain_event.dart';
import 'package:enterprise_management/shared_kernel/domain/event/domain_event_bus.dart';

abstract class DomainEventHandler<Event extends DomainEvent> {
  late final StreamSubscription<Event> _subscription;

  DomainEventHandler(DomainEventBus eventBus) {
    _subscription = eventBus.on<Event>().listen(handle);
  }

  Future<void> handle(Event event);

  Future<void> dispose() async {
    await _subscription.cancel();
  }
}