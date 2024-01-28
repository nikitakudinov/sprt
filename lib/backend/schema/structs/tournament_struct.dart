// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentStruct extends BaseStruct {
  TournamentStruct({
    int? id,
    String? createdAt,
    String? updatedAt,
    int? info,
  })  : _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _info = info;

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

  // "info" field.
  int? _info;
  int get info => _info ?? 0;
  set info(int? val) => _info = val;
  void incrementInfo(int amount) => _info = info + amount;
  bool hasInfo() => _info != null;

  static TournamentStruct fromMap(Map<String, dynamic> data) =>
      TournamentStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        info: castToType<int>(data['info']),
      );

  static TournamentStruct? maybeFromMap(dynamic data) => data is Map
      ? TournamentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'info': _info,
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
        'info': serializeParam(
          _info,
          ParamType.int,
        ),
      }.withoutNulls;

  static TournamentStruct fromSerializableMap(Map<String, dynamic> data) =>
      TournamentStruct(
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
        info: deserializeParam(
          data['info'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TournamentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TournamentStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        info == other.info;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, createdAt, updatedAt, info]);
}

TournamentStruct createTournamentStruct({
  int? id,
  String? createdAt,
  String? updatedAt,
  int? info,
}) =>
    TournamentStruct(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      info: info,
    );
