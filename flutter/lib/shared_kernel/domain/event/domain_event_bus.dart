import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';
import 'package:enterprise_management/shared_kernel/domain/event/domain_event.dart';
import 'package:rxdart/rxdart.dart';

class DomainEventBus {
  final PublishSubject<DomainEvent> _subject = PublishSubject<DomainEvent>();

  Stream<Event> on<Event extends DomainEvent>() {
    return _subject.whereType<Event>();
  }

  void publish(List<DomainEvent> events) {
    for (final event in events) {
      _subject.add(event);
    }
  }

  Future<void> dispose() async {
    await _subject.close();
  }
}

extension DomainEventBusAggregateX on DomainEventBus {
  /// Publishes all domain events accumulated inside [aggregate] and clears them.
  void publishFrom(AggregateRoot aggregate) {
    if (aggregate.events.isNotEmpty) {
      publish(aggregate.events);
      aggregate.clearEvents();
    }
  }

  /// Publishes all domain events from multiple [aggregates] and clears each.
  void publishFromAll(Iterable<AggregateRoot> aggregates) {
    for (final aggregate in aggregates) {
      publishFrom(aggregate);
    }
  }
}
