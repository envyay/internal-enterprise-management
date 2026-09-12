abstract class DomainEvent {
  DomainEvent({DateTime? occurredAt}) : occurredAt = occurredAt ?? DateTime.now();

  final DateTime occurredAt;
}
