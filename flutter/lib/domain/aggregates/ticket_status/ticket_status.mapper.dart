// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'ticket_status.dart';

class TicketStatusMapper extends ClassMapperBase<TicketStatus> {
  TicketStatusMapper._();

  static TicketStatusMapper? _instance;
  static TicketStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TicketStatusMapper._());
      TicketMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TicketStatus';

  static String _$id(TicketStatus v) => v.id;
  static const Field<TicketStatus, String> _f$id = Field('id', _$id);
  static String _$projectId(TicketStatus v) => v.projectId;
  static const Field<TicketStatus, String> _f$projectId = Field(
    'projectId',
    _$projectId,
  );
  static String _$name(TicketStatus v) => v.name;
  static const Field<TicketStatus, String> _f$name = Field('name', _$name);
  static List<Ticket>? _$tickets(TicketStatus v) => v.tickets;
  static const Field<TicketStatus, List<Ticket>> _f$tickets = Field(
    'tickets',
    _$tickets,
  );

  @override
  final MappableFields<TicketStatus> fields = const {
    #id: _f$id,
    #projectId: _f$projectId,
    #name: _f$name,
    #tickets: _f$tickets,
  };

  static TicketStatus _instantiate(DecodingData data) {
    return TicketStatus(
      id: data.dec(_f$id),
      projectId: data.dec(_f$projectId),
      name: data.dec(_f$name),
      tickets: data.dec(_f$tickets),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TicketStatus fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TicketStatus>(map);
  }

  static TicketStatus fromJson(String json) {
    return ensureInitialized().decodeJson<TicketStatus>(json);
  }
}

mixin TicketStatusMappable {
  String toJson() {
    return TicketStatusMapper.ensureInitialized().encodeJson<TicketStatus>(
      this as TicketStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return TicketStatusMapper.ensureInitialized().encodeMap<TicketStatus>(
      this as TicketStatus,
    );
  }

  TicketStatusCopyWith<TicketStatus, TicketStatus, TicketStatus> get copyWith =>
      _TicketStatusCopyWithImpl<TicketStatus, TicketStatus>(
        this as TicketStatus,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TicketStatusMapper.ensureInitialized().stringifyValue(
      this as TicketStatus,
    );
  }

  @override
  bool operator ==(Object other) {
    return TicketStatusMapper.ensureInitialized().equalsValue(
      this as TicketStatus,
      other,
    );
  }

  @override
  int get hashCode {
    return TicketStatusMapper.ensureInitialized().hashValue(
      this as TicketStatus,
    );
  }
}

extension TicketStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TicketStatus, $Out> {
  TicketStatusCopyWith<$R, TicketStatus, $Out> get $asTicketStatus =>
      $base.as((v, t, t2) => _TicketStatusCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TicketStatusCopyWith<$R, $In extends TicketStatus, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Ticket, TicketCopyWith<$R, Ticket, Ticket>>? get tickets;
  $R call({String? id, String? projectId, String? name, List<Ticket>? tickets});
  TicketStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TicketStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TicketStatus, $Out>
    implements TicketStatusCopyWith<$R, TicketStatus, $Out> {
  _TicketStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TicketStatus> $mapper =
      TicketStatusMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Ticket, TicketCopyWith<$R, Ticket, Ticket>>? get tickets =>
      $value.tickets != null
      ? ListCopyWith(
          $value.tickets!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(tickets: v),
        )
      : null;
  @override
  $R call({
    String? id,
    String? projectId,
    String? name,
    Object? tickets = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (projectId != null) #projectId: projectId,
      if (name != null) #name: name,
      if (tickets != $none) #tickets: tickets,
    }),
  );
  @override
  TicketStatus $make(CopyWithData data) => TicketStatus(
    id: data.get(#id, or: $value.id),
    projectId: data.get(#projectId, or: $value.projectId),
    name: data.get(#name, or: $value.name),
    tickets: data.get(#tickets, or: $value.tickets),
  );

  @override
  TicketStatusCopyWith<$R2, TicketStatus, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TicketStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

