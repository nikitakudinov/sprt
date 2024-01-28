// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MatchOpponentStruct extends BaseStruct {
  MatchOpponentStruct({
    int? id,
    String? createdAt,
    String? updatedAt,
    int? teamId,
    int? scores,
    int? matchId,
  })  : _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _teamId = teamId,
        _scores = scores,
        _matchId = matchId;

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

  // "team_id" field.
  int? _teamId;
  int get teamId => _teamId ?? 0;
  set teamId(int? val) => _teamId = val;
  void incrementTeamId(int amount) => _teamId = teamId + amount;
  bool hasTeamId() => _teamId != null;

  // "scores" field.
  int? _scores;
  int get scores => _scores ?? 0;
  set scores(int? val) => _scores = val;
  void incrementScores(int amount) => _scores = scores + amount;
  bool hasScores() => _scores != null;

  // "match_id" field.
  int? _matchId;
  int get matchId => _matchId ?? 0;
  set matchId(int? val) => _matchId = val;
  void incrementMatchId(int amount) => _matchId = matchId + amount;
  bool hasMatchId() => _matchId != null;

  static MatchOpponentStruct fromMap(Map<String, dynamic> data) =>
      MatchOpponentStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        teamId: castToType<int>(data['team_id']),
        scores: castToType<int>(data['scores']),
        matchId: castToType<int>(data['match_id']),
      );

  static MatchOpponentStruct? maybeFromMap(dynamic data) => data is Map
      ? MatchOpponentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'team_id': _teamId,
        'scores': _scores,
        'match_id': _matchId,
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
        'team_id': serializeParam(
          _teamId,
          ParamType.int,
        ),
        'scores': serializeParam(
          _scores,
          ParamType.int,
        ),
        'match_id': serializeParam(
          _matchId,
          ParamType.int,
        ),
      }.withoutNulls;

  static MatchOpponentStruct fromSerializableMap(Map<String, dynamic> data) =>
      MatchOpponentStruct(
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
        teamId: deserializeParam(
          data['team_id'],
          ParamType.int,
          false,
        ),
        scores: deserializeParam(
          data['scores'],
          ParamType.int,
          false,
        ),
        matchId: deserializeParam(
          data['match_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MatchOpponentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MatchOpponentStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        teamId == other.teamId &&
        scores == other.scores &&
        matchId == other.matchId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, updatedAt, teamId, scores, matchId]);
}

MatchOpponentStruct createMatchOpponentStruct({
  int? id,
  String? createdAt,
  String? updatedAt,
  int? teamId,
  int? scores,
  int? matchId,
}) =>
    MatchOpponentStruct(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      teamId: teamId,
      scores: scores,
      matchId: matchId,
    );
