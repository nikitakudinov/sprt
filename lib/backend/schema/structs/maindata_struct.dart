// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaindataStruct extends BaseStruct {
  MaindataStruct({
    List<ChatStruct>? chats,
    List<ChatMessageStruct>? chatMessages,
    List<ChatMemberStruct>? chatMembers,
    List<TeamStruct>? teams,
    List<PlayerStruct>? players,
    List<CountryStruct>? countries,
  })  : _chats = chats,
        _chatMessages = chatMessages,
        _chatMembers = chatMembers,
        _teams = teams,
        _players = players,
        _countries = countries;

  // "CHATS" field.
  List<ChatStruct>? _chats;
  List<ChatStruct> get chats => _chats ?? const [];
  set chats(List<ChatStruct>? val) => _chats = val;
  void updateChats(Function(List<ChatStruct>) updateFn) =>
      updateFn(_chats ??= []);
  bool hasChats() => _chats != null;

  // "chat_messages" field.
  List<ChatMessageStruct>? _chatMessages;
  List<ChatMessageStruct> get chatMessages => _chatMessages ?? const [];
  set chatMessages(List<ChatMessageStruct>? val) => _chatMessages = val;
  void updateChatMessages(Function(List<ChatMessageStruct>) updateFn) =>
      updateFn(_chatMessages ??= []);
  bool hasChatMessages() => _chatMessages != null;

  // "chat_members" field.
  List<ChatMemberStruct>? _chatMembers;
  List<ChatMemberStruct> get chatMembers => _chatMembers ?? const [];
  set chatMembers(List<ChatMemberStruct>? val) => _chatMembers = val;
  void updateChatMembers(Function(List<ChatMemberStruct>) updateFn) =>
      updateFn(_chatMembers ??= []);
  bool hasChatMembers() => _chatMembers != null;

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

  // "COUNTRIES" field.
  List<CountryStruct>? _countries;
  List<CountryStruct> get countries => _countries ?? const [];
  set countries(List<CountryStruct>? val) => _countries = val;
  void updateCountries(Function(List<CountryStruct>) updateFn) =>
      updateFn(_countries ??= []);
  bool hasCountries() => _countries != null;

  static MaindataStruct fromMap(Map<String, dynamic> data) => MaindataStruct(
        chats: getStructList(
          data['CHATS'],
          ChatStruct.fromMap,
        ),
        chatMessages: getStructList(
          data['chat_messages'],
          ChatMessageStruct.fromMap,
        ),
        chatMembers: getStructList(
          data['chat_members'],
          ChatMemberStruct.fromMap,
        ),
        teams: getStructList(
          data['TEAMS'],
          TeamStruct.fromMap,
        ),
        players: getStructList(
          data['PLAYERS'],
          PlayerStruct.fromMap,
        ),
        countries: getStructList(
          data['COUNTRIES'],
          CountryStruct.fromMap,
        ),
      );

  static MaindataStruct? maybeFromMap(dynamic data) =>
      data is Map ? MaindataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CHATS': _chats?.map((e) => e.toMap()).toList(),
        'chat_messages': _chatMessages?.map((e) => e.toMap()).toList(),
        'chat_members': _chatMembers?.map((e) => e.toMap()).toList(),
        'TEAMS': _teams?.map((e) => e.toMap()).toList(),
        'PLAYERS': _players?.map((e) => e.toMap()).toList(),
        'COUNTRIES': _countries?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CHATS': serializeParam(
          _chats,
          ParamType.DataStruct,
          true,
        ),
        'chat_messages': serializeParam(
          _chatMessages,
          ParamType.DataStruct,
          true,
        ),
        'chat_members': serializeParam(
          _chatMembers,
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
        'COUNTRIES': serializeParam(
          _countries,
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
        chatMessages: deserializeStructParam<ChatMessageStruct>(
          data['chat_messages'],
          ParamType.DataStruct,
          true,
          structBuilder: ChatMessageStruct.fromSerializableMap,
        ),
        chatMembers: deserializeStructParam<ChatMemberStruct>(
          data['chat_members'],
          ParamType.DataStruct,
          true,
          structBuilder: ChatMemberStruct.fromSerializableMap,
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
        countries: deserializeStructParam<CountryStruct>(
          data['COUNTRIES'],
          ParamType.DataStruct,
          true,
          structBuilder: CountryStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MaindataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MaindataStruct &&
        listEquality.equals(chats, other.chats) &&
        listEquality.equals(chatMessages, other.chatMessages) &&
        listEquality.equals(chatMembers, other.chatMembers) &&
        listEquality.equals(teams, other.teams) &&
        listEquality.equals(players, other.players) &&
        listEquality.equals(countries, other.countries);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([chats, chatMessages, chatMembers, teams, players, countries]);
}

MaindataStruct createMaindataStruct() => MaindataStruct();
