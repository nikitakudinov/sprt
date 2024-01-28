// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlayerStruct extends BaseStruct {
  PlayerStruct({
    String? uid,
    String? createdAt,
    String? nickname,
    String? updatedAt,
    int? team,
    int? country,
  })  : _uid = uid,
        _createdAt = createdAt,
        _nickname = nickname,
        _updatedAt = updatedAt,
        _team = team,
        _country = country;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;
  bool hasUid() => _uid != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '';
  set nickname(String? val) => _nickname = val;
  bool hasNickname() => _nickname != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  // "team" field.
  int? _team;
  int get team => _team ?? 0;
  set team(int? val) => _team = val;
  void incrementTeam(int amount) => _team = team + amount;
  bool hasTeam() => _team != null;

  // "country" field.
  int? _country;
  int get country => _country ?? 0;
  set country(int? val) => _country = val;
  void incrementCountry(int amount) => _country = country + amount;
  bool hasCountry() => _country != null;

  static PlayerStruct fromMap(Map<String, dynamic> data) => PlayerStruct(
        uid: data['uid'] as String?,
        createdAt: data['created_at'] as String?,
        nickname: data['nickname'] as String?,
        updatedAt: data['updated_at'] as String?,
        team: castToType<int>(data['team']),
        country: castToType<int>(data['country']),
      );

  static PlayerStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlayerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'created_at': _createdAt,
        'nickname': _nickname,
        'updated_at': _updatedAt,
        'team': _team,
        'country': _country,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'nickname': serializeParam(
          _nickname,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'team': serializeParam(
          _team,
          ParamType.int,
        ),
        'country': serializeParam(
          _country,
          ParamType.int,
        ),
      }.withoutNulls;

  static PlayerStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlayerStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        nickname: deserializeParam(
          data['nickname'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        team: deserializeParam(
          data['team'],
          ParamType.int,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PlayerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlayerStruct &&
        uid == other.uid &&
        createdAt == other.createdAt &&
        nickname == other.nickname &&
        updatedAt == other.updatedAt &&
        team == other.team &&
        country == other.country;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([uid, createdAt, nickname, updatedAt, team, country]);
}

PlayerStruct createPlayerStruct({
  String? uid,
  String? createdAt,
  String? nickname,
  String? updatedAt,
  int? team,
  int? country,
}) =>
    PlayerStruct(
      uid: uid,
      createdAt: createdAt,
      nickname: nickname,
      updatedAt: updatedAt,
      team: team,
      country: country,
    );
