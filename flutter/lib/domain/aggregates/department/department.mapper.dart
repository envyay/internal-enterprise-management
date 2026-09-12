// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'department.dart';

class DepartmentMapper extends ClassMapperBase<Department> {
  DepartmentMapper._();

  static DepartmentMapper? _instance;
  static DepartmentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DepartmentMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Department';

  static String _$id(Department v) => v.id;
  static const Field<Department, String> _f$id = Field('id', _$id);
  static String _$name(Department v) => v.name;
  static const Field<Department, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<Department> fields = const {#id: _f$id, #name: _f$name};

  static Department _instantiate(DecodingData data) {
    return Department(id: data.dec(_f$id), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static Department fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Department>(map);
  }

  static Department fromJson(String json) {
    return ensureInitialized().decodeJson<Department>(json);
  }
}

mixin DepartmentMappable {
  String toJson() {
    return DepartmentMapper.ensureInitialized().encodeJson<Department>(
      this as Department,
    );
  }

  Map<String, dynamic> toMap() {
    return DepartmentMapper.ensureInitialized().encodeMap<Department>(
      this as Department,
    );
  }

  DepartmentCopyWith<Department, Department, Department> get copyWith =>
      _DepartmentCopyWithImpl<Department, Department>(
        this as Department,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DepartmentMapper.ensureInitialized().stringifyValue(
      this as Department,
    );
  }

  @override
  bool operator ==(Object other) {
    return DepartmentMapper.ensureInitialized().equalsValue(
      this as Department,
      other,
    );
  }

  @override
  int get hashCode {
    return DepartmentMapper.ensureInitialized().hashValue(this as Department);
  }
}

extension DepartmentValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Department, $Out> {
  DepartmentCopyWith<$R, Department, $Out> get $asDepartment =>
      $base.as((v, t, t2) => _DepartmentCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DepartmentCopyWith<$R, $In extends Department, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name});
  DepartmentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DepartmentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Department, $Out>
    implements DepartmentCopyWith<$R, Department, $Out> {
  _DepartmentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Department> $mapper =
      DepartmentMapper.ensureInitialized();
  @override
  $R call({String? id, String? name}) => $apply(
    FieldCopyWithData({if (id != null) #id: id, if (name != null) #name: name}),
  );
  @override
  Department $make(CopyWithData data) => Department(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
  );

  @override
  DepartmentCopyWith<$R2, Department, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DepartmentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

