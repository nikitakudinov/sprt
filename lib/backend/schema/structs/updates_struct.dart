// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UpdatesStruct extends BaseStruct {
  UpdatesStruct({
    String? chats,
    String? chatMembers,
    String? teams,
    String? chatMessages,
  })  : _chats = chats,
        _chatMembers = chatMembers,
        _teams = teams,
        _chatMessages = chatMessages;

  // "chats" field.
  String? _chats;
  String get chats => _chats ?? '';
  set chats(String? val) => _chats = val;
  bool hasChats() => _chats != null;

  // "chat_members" field.
  String? _chatMembers;
  String get chatMembers => _chatMembers ?? '';
  set chatMembers(String? val) => _chatMembers = val;
  bool hasChatMembers() => _chatMembers != null;

  // "teams" field.
  String? _teams;
  String get teams => _teams ?? '';
  set teams(String? val) => _teams = val;
  bool hasTeams() => _teams != null;

  // "chat_messages" field.
  String? _chatMessages;
  String get chatMessages => _chatMessages ?? '';
  set chatMessages(String? val) => _chatMessages = val;
  bool hasChatMessages() => _chatMessages != null;

  static UpdatesStruct fromMap(Map<String, dynamic> data) => UpdatesStruct(
        chats: data['chats'] as String?,
        chatMembers: data['chat_members'] as String?,
        teams: data['teams'] as String?,
        chatMessages: data['chat_messages'] as String?,
      );

  static UpdatesStruct? maybeFromMap(dynamic data) =>
      data is Map ? UpdatesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'chats': _chats,
        'chat_members': _chatMembers,
        'teams': _teams,
        'chat_messages': _chatMessages,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chats': serializeParam(
          _chats,
          ParamType.String,
        ),
        'chat_members': serializeParam(
          _chatMembers,
          ParamType.String,
        ),
        'teams': serializeParam(
          _teams,
          ParamType.String,
        ),
        'chat_messages': serializeParam(
          _chatMessages,
          ParamType.String,
        ),
      }.withoutNulls;

  static UpdatesStruct fromSerializableMap(Map<String, dynamic> data) =>
      UpdatesStruct(
        chats: deserializeParam(
          data['chats'],
          ParamType.String,
          false,
        ),
        chatMembers: deserializeParam(
          data['chat_members'],
          ParamType.String,
          false,
        ),
        teams: deserializeParam(
          data['teams'],
          ParamType.String,
          false,
        ),
        chatMessages: deserializeParam(
          data['chat_messages'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UpdatesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UpdatesStruct &&
        chats == other.chats &&
        chatMembers == other.chatMembers &&
        teams == other.teams &&
        chatMessages == other.chatMessages;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([chats, chatMembers, teams, chatMessages]);
}

UpdatesStruct createUpdatesStruct({
  String? chats,
  String? chatMembers,
  String? teams,
  String? chatMessages,
}) =>
    UpdatesStruct(
      chats: chats,
      chatMembers: chatMembers,
      teams: teams,
      chatMessages: chatMessages,
    );
