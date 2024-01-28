// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamInfoStruct extends BaseStruct {
  TeamInfoStruct({
    int? id,
    String? createdAt,
    String? updatedAt,
    String? name,
    String? tag,
    String? country,
  })  : _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _name = name,
        _tag = tag,
        _country = country;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;
  bool hasTag() => _tag != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  static TeamInfoStruct fromMap(Map<String, dynamic> data) => TeamInfoStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        name: data['name'] as String?,
        tag: data['tag'] as String?,
        country: data['country'] as String?,
      );

  static TeamInfoStruct? maybeFromMap(dynamic data) =>
      data is Map ? TeamInfoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'name': _name,
        'tag': _tag,
        'country': _country,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
      }.withoutNulls;

  static TeamInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamInfoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        tag: deserializeParam(
          data['tag'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TeamInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamInfoStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        name == other.name &&
        tag == other.tag &&
        country == other.country;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, createdAt, updatedAt, name, tag, country]);
}

TeamInfoStruct createTeamInfoStruct({
  int? id,
  String? createdAt,
  String? updatedAt,
  String? name,
  String? tag,
  String? country,
}) =>
    TeamInfoStruct(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      name: name,
      tag: tag,
      country: country,
    );
