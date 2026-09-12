import 'package:enterprise_management/shared_kernel/domain/event/domain_event.dart';

abstract class AggregateRoot<TId> {
  AggregateRoot({required this.id, this.createdBy, this.createdAt, this.updatedBy, this.updatedAt});

  final TId id;
  final String? createdBy;
  final DateTime? createdAt;
  final String? updatedBy;
  final DateTime? updatedAt;

  final List<DomainEvent> _events = [];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AggregateRoot<TId> && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;

  List<DomainEvent> get events => List.unmodifiable(_events);

  void addEvent(DomainEvent event) {
    _events.add(event);
  }

  void addEvents(Iterable<DomainEvent> events) {
    _events.addAll(events);
  }

  void clearEvents() {
    _events.clear();
  }
}
