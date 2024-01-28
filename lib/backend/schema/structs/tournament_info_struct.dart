// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentInfoStruct extends BaseStruct {
  TournamentInfoStruct({
    int? id,
    String? createdAt,
    String? updatedAt,
    int? tournamentId,
    String? name,
    String? tag,
    int? country,
  })  : _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _tournamentId = tournamentId,
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

  // "tournament_id" field.
  int? _tournamentId;
  int get tournamentId => _tournamentId ?? 0;
  set tournamentId(int? val) => _tournamentId = val;
  void incrementTournamentId(int amount) =>
      _tournamentId = tournamentId + amount;
  bool hasTournamentId() => _tournamentId != null;

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
  int? _country;
  int get country => _country ?? 0;
  set country(int? val) => _country = val;
  void incrementCountry(int amount) => _country = country + amount;
  bool hasCountry() => _country != null;

  static TournamentInfoStruct fromMap(Map<String, dynamic> data) =>
      TournamentInfoStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        tournamentId: castToType<int>(data['tournament_id']),
        name: data['name'] as String?,
        tag: data['tag'] as String?,
        country: castToType<int>(data['country']),
      );

  static TournamentInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? TournamentInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'tournament_id': _tournamentId,
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
        'tournament_id': serializeParam(
          _tournamentId,
          ParamType.int,
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
          ParamType.int,
        ),
      }.withoutNulls;

  static TournamentInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      TournamentInfoStruct(
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
        tournamentId: deserializeParam(
          data['tournament_id'],
          ParamType.int,
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
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TournamentInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TournamentInfoStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        tournamentId == other.tournamentId &&
        name == other.name &&
        tag == other.tag &&
        country == other.country;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, updatedAt, tournamentId, name, tag, country]);
}

TournamentInfoStruct createTournamentInfoStruct({
  int? id,
  String? createdAt,
  String? updatedAt,
  int? tournamentId,
  String? name,
  String? tag,
  int? country,
}) =>
    TournamentInfoStruct(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      tournamentId: tournamentId,
      name: name,
      tag: tag,
      country: country,
    );
