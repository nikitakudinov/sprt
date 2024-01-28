// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentOrganizatorStruct extends BaseStruct {
  TournamentOrganizatorStruct({
    int? id,
    String? createdAt,
    int? tournamentId,
    String? updatedAt,
  })  : _id = id,
        _createdAt = createdAt,
        _tournamentId = tournamentId,
        _updatedAt = updatedAt;

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

  // "tournament_id" field.
  int? _tournamentId;
  int get tournamentId => _tournamentId ?? 0;
  set tournamentId(int? val) => _tournamentId = val;
  void incrementTournamentId(int amount) =>
      _tournamentId = tournamentId + amount;
  bool hasTournamentId() => _tournamentId != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  static TournamentOrganizatorStruct fromMap(Map<String, dynamic> data) =>
      TournamentOrganizatorStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        tournamentId: castToType<int>(data['tournament_id']),
        updatedAt: data['updated_at'] as String?,
      );

  static TournamentOrganizatorStruct? maybeFromMap(dynamic data) => data is Map
      ? TournamentOrganizatorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'tournament_id': _tournamentId,
        'updated_at': _updatedAt,
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
        'tournament_id': serializeParam(
          _tournamentId,
          ParamType.int,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static TournamentOrganizatorStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TournamentOrganizatorStruct(
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
        tournamentId: deserializeParam(
          data['tournament_id'],
          ParamType.int,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TournamentOrganizatorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TournamentOrganizatorStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        tournamentId == other.tournamentId &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, createdAt, tournamentId, updatedAt]);
}

TournamentOrganizatorStruct createTournamentOrganizatorStruct({
  int? id,
  String? createdAt,
  int? tournamentId,
  String? updatedAt,
}) =>
    TournamentOrganizatorStruct(
      id: id,
      createdAt: createdAt,
      tournamentId: tournamentId,
      updatedAt: updatedAt,
    );
