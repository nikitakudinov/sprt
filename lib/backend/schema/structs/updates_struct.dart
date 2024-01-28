// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UpdatesStruct extends BaseStruct {
  UpdatesStruct({
    String? chats,
    String? teams,
    DateTime? chatMembers,
  })  : _chats = chats,
        _teams = teams,
        _chatMembers = chatMembers;

  // "chats" field.
  String? _chats;
  String get chats => _chats ?? '';
  set chats(String? val) => _chats = val;
  bool hasChats() => _chats != null;

  // "teams" field.
  String? _teams;
  String get teams => _teams ?? '';
  set teams(String? val) => _teams = val;
  bool hasTeams() => _teams != null;

  // "chat_members" field.
  DateTime? _chatMembers;
  DateTime? get chatMembers => _chatMembers;
  set chatMembers(DateTime? val) => _chatMembers = val;
  bool hasChatMembers() => _chatMembers != null;

  static UpdatesStruct fromMap(Map<String, dynamic> data) => UpdatesStruct(
        chats: data['chats'] as String?,
        teams: data['teams'] as String?,
        chatMembers: data['chat_members'] as DateTime?,
      );

  static UpdatesStruct? maybeFromMap(dynamic data) =>
      data is Map ? UpdatesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'chats': _chats,
        'teams': _teams,
        'chat_members': _chatMembers,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chats': serializeParam(
          _chats,
          ParamType.String,
        ),
        'teams': serializeParam(
          _teams,
          ParamType.String,
        ),
        'chat_members': serializeParam(
          _chatMembers,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static UpdatesStruct fromSerializableMap(Map<String, dynamic> data) =>
      UpdatesStruct(
        chats: deserializeParam(
          data['chats'],
          ParamType.String,
          false,
        ),
        teams: deserializeParam(
          data['teams'],
          ParamType.String,
          false,
        ),
        chatMembers: deserializeParam(
          data['chat_members'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'UpdatesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UpdatesStruct &&
        chats == other.chats &&
        teams == other.teams &&
        chatMembers == other.chatMembers;
  }

  @override
  int get hashCode => const ListEquality().hash([chats, teams, chatMembers]);
}

UpdatesStruct createUpdatesStruct({
  String? chats,
  String? teams,
  DateTime? chatMembers,
}) =>
    UpdatesStruct(
      chats: chats,
      teams: teams,
      chatMembers: chatMembers,
    );
