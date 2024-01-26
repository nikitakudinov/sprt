// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MatchesStruct extends BaseStruct {
  MatchesStruct({
    int? id,
    String? updatedAt,
    String? createdAt,
    int? forTournament,
    String? dateOfGame,
  })  : _id = id,
        _updatedAt = updatedAt,
        _createdAt = createdAt,
        _forTournament = forTournament,
        _dateOfGame = dateOfGame;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "for_tournament" field.
  int? _forTournament;
  int get forTournament => _forTournament ?? 0;
  set forTournament(int? val) => _forTournament = val;
  void incrementForTournament(int amount) =>
      _forTournament = forTournament + amount;
  bool hasForTournament() => _forTournament != null;

  // "date_of_game" field.
  String? _dateOfGame;
  String get dateOfGame => _dateOfGame ?? '';
  set dateOfGame(String? val) => _dateOfGame = val;
  bool hasDateOfGame() => _dateOfGame != null;

  static MatchesStruct fromMap(Map<String, dynamic> data) => MatchesStruct(
        id: castToType<int>(data['id']),
        updatedAt: data['updated_at'] as String?,
        createdAt: data['created_at'] as String?,
        forTournament: castToType<int>(data['for_tournament']),
        dateOfGame: data['date_of_game'] as String?,
      );

  static MatchesStruct? maybeFromMap(dynamic data) =>
      data is Map ? MatchesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'updated_at': _updatedAt,
        'created_at': _createdAt,
        'for_tournament': _forTournament,
        'date_of_game': _dateOfGame,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'for_tournament': serializeParam(
          _forTournament,
          ParamType.int,
        ),
        'date_of_game': serializeParam(
          _dateOfGame,
          ParamType.String,
        ),
      }.withoutNulls;

  static MatchesStruct fromSerializableMap(Map<String, dynamic> data) =>
      MatchesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        forTournament: deserializeParam(
          data['for_tournament'],
          ParamType.int,
          false,
        ),
        dateOfGame: deserializeParam(
          data['date_of_game'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MatchesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MatchesStruct &&
        id == other.id &&
        updatedAt == other.updatedAt &&
        createdAt == other.createdAt &&
        forTournament == other.forTournament &&
        dateOfGame == other.dateOfGame;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, updatedAt, createdAt, forTournament, dateOfGame]);
}

MatchesStruct createMatchesStruct({
  int? id,
  String? updatedAt,
  String? createdAt,
  int? forTournament,
  String? dateOfGame,
}) =>
    MatchesStruct(
      id: id,
      updatedAt: updatedAt,
      createdAt: createdAt,
      forTournament: forTournament,
      dateOfGame: dateOfGame,
    );
