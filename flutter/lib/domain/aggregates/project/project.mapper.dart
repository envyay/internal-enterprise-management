// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'project.dart';

class ProjectMapper extends ClassMapperBase<Project> {
  ProjectMapper._();

  static ProjectMapper? _instance;
  static ProjectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectMapper._());
      UserMapper.ensureInitialized();
      TicketStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Project';

  static String _$id(Project v) => v.id;
  static const Field<Project, String> _f$id = Field('id', _$id);
  static String _$name(Project v) => v.name;
  static const Field<Project, String> _f$name = Field('name', _$name);
  static String _$description(Project v) => v.description;
  static const Field<Project, String> _f$description = Field(
    'description',
    _$description,
  );
  static bool _$isActive(Project v) => v.isActive;
  static const Field<Project, bool> _f$isActive = Field(
    'isActive',
    _$isActive,
    opt: true,
    def: false,
  );
  static String _$code(Project v) => v.code;
  static const Field<Project, String> _f$code = Field('code', _$code);
  static int _$status(Project v) => v.status;
  static const Field<Project, int> _f$status = Field('status', _$status);
  static DateTime? _$startDate(Project v) => v.startDate;
  static const Field<Project, DateTime> _f$startDate = Field(
    'startDate',
    _$startDate,
  );
  static DateTime? _$endDate(Project v) => v.endDate;
  static const Field<Project, DateTime> _f$endDate = Field(
    'endDate',
    _$endDate,
  );
  static List<User> _$users(Project v) => v.users;
  static const Field<Project, List<User>> _f$users = Field('users', _$users);
  static List<TicketStatus> _$ticketStatuses(Project v) => v.ticketStatuses;
  static const Field<Project, List<TicketStatus>> _f$ticketStatuses = Field(
    'ticketStatuses',
    _$ticketStatuses,
  );

  @override
  final MappableFields<Project> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
    #isActive: _f$isActive,
    #code: _f$code,
    #status: _f$status,
    #startDate: _f$startDate,
    #endDate: _f$endDate,
    #users: _f$users,
    #ticketStatuses: _f$ticketStatuses,
  };

  static Project _instantiate(DecodingData data) {
    return Project(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      isActive: data.dec(_f$isActive),
      code: data.dec(_f$code),
      status: data.dec(_f$status),
      startDate: data.dec(_f$startDate),
      endDate: data.dec(_f$endDate),
      users: data.dec(_f$users),
      ticketStatuses: data.dec(_f$ticketStatuses),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Project fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Project>(map);
  }

  static Project fromJson(String json) {
    return ensureInitialized().decodeJson<Project>(json);
  }
}

mixin ProjectMappable {
  String toJson() {
    return ProjectMapper.ensureInitialized().encodeJson<Project>(
      this as Project,
    );
  }

  Map<String, dynamic> toMap() {
    return ProjectMapper.ensureInitialized().encodeMap<Project>(
      this as Project,
    );
  }

  ProjectCopyWith<Project, Project, Project> get copyWith =>
      _ProjectCopyWithImpl<Project, Project>(
        this as Project,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProjectMapper.ensureInitialized().stringifyValue(this as Project);
  }

  @override
  bool operator ==(Object other) {
    return ProjectMapper.ensureInitialized().equalsValue(
      this as Project,
      other,
    );
  }

  @override
  int get hashCode {
    return ProjectMapper.ensureInitialized().hashValue(this as Project);
  }
}

extension ProjectValueCopy<$R, $Out> on ObjectCopyWith<$R, Project, $Out> {
  ProjectCopyWith<$R, Project, $Out> get $asProject =>
      $base.as((v, t, t2) => _ProjectCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProjectCopyWith<$R, $In extends Project, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, User, UserCopyWith<$R, User, User>> get users;
  ListCopyWith<
    $R,
    TicketStatus,
    TicketStatusCopyWith<$R, TicketStatus, TicketStatus>
  >
  get ticketStatuses;
  $R call({
    String? id,
    String? name,
    String? description,
    bool? isActive,
    String? code,
    int? status,
    DateTime? startDate,
    DateTime? endDate,
    List<User>? users,
    List<TicketStatus>? ticketStatuses,
  });
  ProjectCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProjectCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Project, $Out>
    implements ProjectCopyWith<$R, Project, $Out> {
  _ProjectCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Project> $mapper =
      ProjectMapper.ensureInitialized();
  @override
  ListCopyWith<$R, User, UserCopyWith<$R, User, User>> get users =>
      ListCopyWith(
        $value.users,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(users: v),
      );
  @override
  ListCopyWith<
    $R,
    TicketStatus,
    TicketStatusCopyWith<$R, TicketStatus, TicketStatus>
  >
  get ticketStatuses => ListCopyWith(
    $value.ticketStatuses,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(ticketStatuses: v),
  );
  @override
  $R call({
    String? id,
    String? name,
    String? description,
    bool? isActive,
    String? code,
    int? status,
    Object? startDate = $none,
    Object? endDate = $none,
    List<User>? users,
    List<TicketStatus>? ticketStatuses,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (description != null) #description: description,
      if (isActive != null) #isActive: isActive,
      if (code != null) #code: code,
      if (status != null) #status: status,
      if (startDate != $none) #startDate: startDate,
      if (endDate != $none) #endDate: endDate,
      if (users != null) #users: users,
      if (ticketStatuses != null) #ticketStatuses: ticketStatuses,
    }),
  );
  @override
  Project $make(CopyWithData data) => Project(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    isActive: data.get(#isActive, or: $value.isActive),
    code: data.get(#code, or: $value.code),
    status: data.get(#status, or: $value.status),
    startDate: data.get(#startDate, or: $value.startDate),
    endDate: data.get(#endDate, or: $value.endDate),
    users: data.get(#users, or: $value.users),
    ticketStatuses: data.get(#ticketStatuses, or: $value.ticketStatuses),
  );

  @override
  ProjectCopyWith<$R2, Project, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ProjectCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

