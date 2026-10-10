// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'document.dart';

class DocumentMapper extends ClassMapperBase<Document> {
  DocumentMapper._();

  static DocumentMapper? _instance;
  static DocumentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DocumentMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Document';

  static String _$id(Document v) => v.id;
  static const Field<Document, String> _f$id = Field('id', _$id);
  static String _$referenceId(Document v) => v.referenceId;
  static const Field<Document, String> _f$referenceId = Field(
    'referenceId',
    _$referenceId,
  );
  static String _$name(Document v) => v.name;
  static const Field<Document, String> _f$name = Field('name', _$name);
  static String _$bucketName(Document v) => v.bucketName;
  static const Field<Document, String> _f$bucketName = Field(
    'bucketName',
    _$bucketName,
  );
  static String _$objectName(Document v) => v.objectName;
  static const Field<Document, String> _f$objectName = Field(
    'objectName',
    _$objectName,
  );
  static int _$size(Document v) => v.size;
  static const Field<Document, int> _f$size = Field('size', _$size);
  static int _$status(Document v) => v.status;
  static const Field<Document, int> _f$status = Field('status', _$status);
  static String _$extension(Document v) => v.extension;
  static const Field<Document, String> _f$extension = Field(
    'extension',
    _$extension,
  );

  @override
  final MappableFields<Document> fields = const {
    #id: _f$id,
    #referenceId: _f$referenceId,
    #name: _f$name,
    #bucketName: _f$bucketName,
    #objectName: _f$objectName,
    #size: _f$size,
    #status: _f$status,
    #extension: _f$extension,
  };

  static Document _instantiate(DecodingData data) {
    return Document(
      id: data.dec(_f$id),
      referenceId: data.dec(_f$referenceId),
      name: data.dec(_f$name),
      bucketName: data.dec(_f$bucketName),
      objectName: data.dec(_f$objectName),
      size: data.dec(_f$size),
      status: data.dec(_f$status),
      extension: data.dec(_f$extension),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Document fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Document>(map);
  }

  static Document fromJson(String json) {
    return ensureInitialized().decodeJson<Document>(json);
  }
}

mixin DocumentMappable {
  String toJson() {
    return DocumentMapper.ensureInitialized().encodeJson<Document>(
      this as Document,
    );
  }

  Map<String, dynamic> toMap() {
    return DocumentMapper.ensureInitialized().encodeMap<Document>(
      this as Document,
    );
  }

  DocumentCopyWith<Document, Document, Document> get copyWith =>
      _DocumentCopyWithImpl<Document, Document>(
        this as Document,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DocumentMapper.ensureInitialized().stringifyValue(this as Document);
  }

  @override
  bool operator ==(Object other) {
    return DocumentMapper.ensureInitialized().equalsValue(
      this as Document,
      other,
    );
  }

  @override
  int get hashCode {
    return DocumentMapper.ensureInitialized().hashValue(this as Document);
  }
}

extension DocumentValueCopy<$R, $Out> on ObjectCopyWith<$R, Document, $Out> {
  DocumentCopyWith<$R, Document, $Out> get $asDocument =>
      $base.as((v, t, t2) => _DocumentCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DocumentCopyWith<$R, $In extends Document, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? referenceId,
    String? name,
    String? bucketName,
    String? objectName,
    int? size,
    int? status,
    String? extension,
  });
  DocumentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DocumentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Document, $Out>
    implements DocumentCopyWith<$R, Document, $Out> {
  _DocumentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Document> $mapper =
      DocumentMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? referenceId,
    String? name,
    String? bucketName,
    String? objectName,
    int? size,
    int? status,
    String? extension,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (referenceId != null) #referenceId: referenceId,
      if (name != null) #name: name,
      if (bucketName != null) #bucketName: bucketName,
      if (objectName != null) #objectName: objectName,
      if (size != null) #size: size,
      if (status != null) #status: status,
      if (extension != null) #extension: extension,
    }),
  );
  @override
  Document $make(CopyWithData data) => Document(
    id: data.get(#id, or: $value.id),
    referenceId: data.get(#referenceId, or: $value.referenceId),
    name: data.get(#name, or: $value.name),
    bucketName: data.get(#bucketName, or: $value.bucketName),
    objectName: data.get(#objectName, or: $value.objectName),
    size: data.get(#size, or: $value.size),
    status: data.get(#status, or: $value.status),
    extension: data.get(#extension, or: $value.extension),
  );

  @override
  DocumentCopyWith<$R2, Document, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DocumentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

