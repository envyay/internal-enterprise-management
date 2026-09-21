// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'ticket.dart';

class TicketMapper extends ClassMapperBase<Ticket> {
  TicketMapper._();

  static TicketMapper? _instance;
  static TicketMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TicketMapper._());
      CommentMapper.ensureInitialized();
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Ticket';

  static String _$id(Ticket v) => v.id;
  static const Field<Ticket, String> _f$id = Field('id', _$id);
  static String _$title(Ticket v) => v.title;
  static const Field<Ticket, String> _f$title = Field('title', _$title);
  static String _$description(Ticket v) => v.description;
  static const Field<Ticket, String> _f$description = Field(
    'description',
    _$description,
  );
  static List<Comment> _$comments(Ticket v) => v.comments;
  static const Field<Ticket, List<Comment>> _f$comments = Field(
    'comments',
    _$comments,
  );
  static String _$projectId(Ticket v) => v.projectId;
  static const Field<Ticket, String> _f$projectId = Field(
    'projectId',
    _$projectId,
  );
  static String _$ticketStatusId(Ticket v) => v.ticketStatusId;
  static const Field<Ticket, String> _f$ticketStatusId = Field(
    'ticketStatusId',
    _$ticketStatusId,
  );
  static List<User> _$users(Ticket v) => v.users;
  static const Field<Ticket, List<User>> _f$users = Field('users', _$users);

  @override
  final MappableFields<Ticket> fields = const {
    #id: _f$id,
    #title: _f$title,
    #description: _f$description,
    #comments: _f$comments,
    #projectId: _f$projectId,
    #ticketStatusId: _f$ticketStatusId,
    #users: _f$users,
  };

  static Ticket _instantiate(DecodingData data) {
    return Ticket(
      id: data.dec(_f$id),
      title: data.dec(_f$title),
      description: data.dec(_f$description),
      comments: data.dec(_f$comments),
      projectId: data.dec(_f$projectId),
      ticketStatusId: data.dec(_f$ticketStatusId),
      users: data.dec(_f$users),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Ticket fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Ticket>(map);
  }

  static Ticket fromJson(String json) {
    return ensureInitialized().decodeJson<Ticket>(json);
  }
}

mixin TicketMappable {
  String toJson() {
    return TicketMapper.ensureInitialized().encodeJson<Ticket>(this as Ticket);
  }

  Map<String, dynamic> toMap() {
    return TicketMapper.ensureInitialized().encodeMap<Ticket>(this as Ticket);
  }

  TicketCopyWith<Ticket, Ticket, Ticket> get copyWith =>
      _TicketCopyWithImpl<Ticket, Ticket>(this as Ticket, $identity, $identity);
  @override
  String toString() {
    return TicketMapper.ensureInitialized().stringifyValue(this as Ticket);
  }

  @override
  bool operator ==(Object other) {
    return TicketMapper.ensureInitialized().equalsValue(this as Ticket, other);
  }

  @override
  int get hashCode {
    return TicketMapper.ensureInitialized().hashValue(this as Ticket);
  }
}

extension TicketValueCopy<$R, $Out> on ObjectCopyWith<$R, Ticket, $Out> {
  TicketCopyWith<$R, Ticket, $Out> get $asTicket =>
      $base.as((v, t, t2) => _TicketCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TicketCopyWith<$R, $In extends Ticket, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Comment, CommentCopyWith<$R, Comment, Comment>> get comments;
  ListCopyWith<$R, User, UserCopyWith<$R, User, User>> get users;
  $R call({
    String? id,
    String? title,
    String? description,
    List<Comment>? comments,
    String? projectId,
    String? ticketStatusId,
    List<User>? users,
  });
  TicketCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TicketCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Ticket, $Out>
    implements TicketCopyWith<$R, Ticket, $Out> {
  _TicketCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Ticket> $mapper = TicketMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Comment, CommentCopyWith<$R, Comment, Comment>>
  get comments => ListCopyWith(
    $value.comments,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(comments: v),
  );
  @override
  ListCopyWith<$R, User, UserCopyWith<$R, User, User>> get users =>
      ListCopyWith(
        $value.users,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(users: v),
      );
  @override
  $R call({
    String? id,
    String? title,
    String? description,
    List<Comment>? comments,
    String? projectId,
    String? ticketStatusId,
    List<User>? users,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (title != null) #title: title,
      if (description != null) #description: description,
      if (comments != null) #comments: comments,
      if (projectId != null) #projectId: projectId,
      if (ticketStatusId != null) #ticketStatusId: ticketStatusId,
      if (users != null) #users: users,
    }),
  );
  @override
  Ticket $make(CopyWithData data) => Ticket(
    id: data.get(#id, or: $value.id),
    title: data.get(#title, or: $value.title),
    description: data.get(#description, or: $value.description),
    comments: data.get(#comments, or: $value.comments),
    projectId: data.get(#projectId, or: $value.projectId),
    ticketStatusId: data.get(#ticketStatusId, or: $value.ticketStatusId),
    users: data.get(#users, or: $value.users),
  );

  @override
  TicketCopyWith<$R2, Ticket, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TicketCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

