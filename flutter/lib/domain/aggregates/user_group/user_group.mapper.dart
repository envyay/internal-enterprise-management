// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_group.dart';

class UserGroupMapper extends ClassMapperBase<UserGroup> {
  UserGroupMapper._();

  static UserGroupMapper? _instance;
  static UserGroupMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserGroupMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserGroup';

  static String _$id(UserGroup v) => v.id;
  static const Field<UserGroup, String> _f$id = Field('id', _$id);
  static String _$name(UserGroup v) => v.name;
  static const Field<UserGroup, String> _f$name = Field('name', _$name);
  static bool _$isActive(UserGroup v) => v.isActive;
  static const Field<UserGroup, bool> _f$isActive = Field(
    'isActive',
    _$isActive,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<UserGroup> fields = const {
    #id: _f$id,
    #name: _f$name,
    #isActive: _f$isActive,
  };

  static UserGroup _instantiate(DecodingData data) {
    return UserGroup(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      isActive: data.dec(_f$isActive),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserGroup fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserGroup>(map);
  }

  static UserGroup fromJson(String json) {
    return ensureInitialized().decodeJson<UserGroup>(json);
  }
}

mixin UserGroupMappable {
  String toJson() {
    return UserGroupMapper.ensureInitialized().encodeJson<UserGroup>(
      this as UserGroup,
    );
  }

  Map<String, dynamic> toMap() {
    return UserGroupMapper.ensureInitialized().encodeMap<UserGroup>(
      this as UserGroup,
    );
  }

  UserGroupCopyWith<UserGroup, UserGroup, UserGroup> get copyWith =>
      _UserGroupCopyWithImpl<UserGroup, UserGroup>(
        this as UserGroup,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserGroupMapper.ensureInitialized().stringifyValue(
      this as UserGroup,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserGroupMapper.ensureInitialized().equalsValue(
      this as UserGroup,
      other,
    );
  }

  @override
  int get hashCode {
    return UserGroupMapper.ensureInitialized().hashValue(this as UserGroup);
  }
}

extension UserGroupValueCopy<$R, $Out> on ObjectCopyWith<$R, UserGroup, $Out> {
  UserGroupCopyWith<$R, UserGroup, $Out> get $asUserGroup =>
      $base.as((v, t, t2) => _UserGroupCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserGroupCopyWith<$R, $In extends UserGroup, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, bool? isActive});
  UserGroupCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserGroupCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserGroup, $Out>
    implements UserGroupCopyWith<$R, UserGroup, $Out> {
  _UserGroupCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserGroup> $mapper =
      UserGroupMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, bool? isActive}) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (isActive != null) #isActive: isActive,
    }),
  );
  @override
  UserGroup $make(CopyWithData data) => UserGroup(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    isActive: data.get(#isActive, or: $value.isActive),
  );

  @override
  UserGroupCopyWith<$R2, UserGroup, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserGroupCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

