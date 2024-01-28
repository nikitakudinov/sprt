// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaindataStruct extends BaseStruct {
  MaindataStruct({
    List<ChatStruct>? chats,
    List<TeamStruct>? teams,
    List<PlayerStruct>? players,
  })  : _chats = chats,
        _teams = teams,
        _players = players;

  // "CHATS" field.
  List<ChatStruct>? _chats;
  List<ChatStruct> get chats => _chats ?? const [];
  set chats(List<ChatStruct>? val) => _chats = val;
  void updateChats(Function(List<ChatStruct>) updateFn) =>
      updateFn(_chats ??= []);
  bool hasChats() => _chats != null;

  // "TEAMS" field.
  List<TeamStruct>? _teams;
  List<TeamStruct> get teams => _teams ?? const [];
  set teams(List<TeamStruct>? val) => _teams = val;
  void updateTeams(Function(List<TeamStruct>) updateFn) =>
      updateFn(_teams ??= []);
  bool hasTeams() => _teams != null;

  // "PLAYERS" field.
  List<PlayerStruct>? _players;
  List<PlayerStruct> get players => _players ?? const [];
  set players(List<PlayerStruct>? val) => _players = val;
  void updatePlayers(Function(List<PlayerStruct>) updateFn) =>
      updateFn(_players ??= []);
  bool hasPlayers() => _players != null;

  static MaindataStruct fromMap(Map<String, dynamic> data) => MaindataStruct(
        chats: getStructList(
          data['CHATS'],
          ChatStruct.fromMap,
        ),
        teams: getStructList(
          data['TEAMS'],
          TeamStruct.fromMap,
        ),
        players: getStructList(
          data['PLAYERS'],
          PlayerStruct.fromMap,
        ),
      );

  static MaindataStruct? maybeFromMap(dynamic data) =>
      data is Map ? MaindataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CHATS': _chats?.map((e) => e.toMap()).toList(),
        'TEAMS': _teams?.map((e) => e.toMap()).toList(),
        'PLAYERS': _players?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CHATS': serializeParam(
          _chats,
          ParamType.DataStruct,
          true,
        ),
        'TEAMS': serializeParam(
          _teams,
          ParamType.DataStruct,
          true,
        ),
        'PLAYERS': serializeParam(
          _players,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static MaindataStruct fromSerializableMap(Map<String, dynamic> data) =>
      MaindataStruct(
        chats: deserializeStructParam<ChatStruct>(
          data['CHATS'],
          ParamType.DataStruct,
          true,
          structBuilder: ChatStruct.fromSerializableMap,
        ),
        teams: deserializeStructParam<TeamStruct>(
          data['TEAMS'],
          ParamType.DataStruct,
          true,
          structBuilder: TeamStruct.fromSerializableMap,
        ),
        players: deserializeStructParam<PlayerStruct>(
          data['PLAYERS'],
          ParamType.DataStruct,
          true,
          structBuilder: PlayerStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MaindataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MaindataStruct &&
        listEquality.equals(chats, other.chats) &&
        listEquality.equals(teams, other.teams) &&
        listEquality.equals(players, other.players);
  }

  @override
  int get hashCode => const ListEquality().hash([chats, teams, players]);
}

MaindataStruct createMaindataStruct() => MaindataStruct();
