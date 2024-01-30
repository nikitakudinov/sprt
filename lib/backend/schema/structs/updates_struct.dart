// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UpdatesStruct extends BaseStruct {
  UpdatesStruct({
    String? chatsUpdated,
    String? chatMessagesUpdated,
    String? chatMembersUpdated,
    String? teamsUpdated,
    String? teamInfoUpdated,
  })  : _chatsUpdated = chatsUpdated,
        _chatMessagesUpdated = chatMessagesUpdated,
        _chatMembersUpdated = chatMembersUpdated,
        _teamsUpdated = teamsUpdated,
        _teamInfoUpdated = teamInfoUpdated;

  // "chats_updated" field.
  String? _chatsUpdated;
  String get chatsUpdated => _chatsUpdated ?? '';
  set chatsUpdated(String? val) => _chatsUpdated = val;
  bool hasChatsUpdated() => _chatsUpdated != null;

  // "chat_messages_updated" field.
  String? _chatMessagesUpdated;
  String get chatMessagesUpdated => _chatMessagesUpdated ?? '';
  set chatMessagesUpdated(String? val) => _chatMessagesUpdated = val;
  bool hasChatMessagesUpdated() => _chatMessagesUpdated != null;

  // "chat_members_updated" field.
  String? _chatMembersUpdated;
  String get chatMembersUpdated => _chatMembersUpdated ?? '';
  set chatMembersUpdated(String? val) => _chatMembersUpdated = val;
  bool hasChatMembersUpdated() => _chatMembersUpdated != null;

  // "teams_updated" field.
  String? _teamsUpdated;
  String get teamsUpdated => _teamsUpdated ?? '';
  set teamsUpdated(String? val) => _teamsUpdated = val;
  bool hasTeamsUpdated() => _teamsUpdated != null;

  // "team_info_updated" field.
  String? _teamInfoUpdated;
  String get teamInfoUpdated => _teamInfoUpdated ?? '';
  set teamInfoUpdated(String? val) => _teamInfoUpdated = val;
  bool hasTeamInfoUpdated() => _teamInfoUpdated != null;

  static UpdatesStruct fromMap(Map<String, dynamic> data) => UpdatesStruct(
        chatsUpdated: data['chats_updated'] as String?,
        chatMessagesUpdated: data['chat_messages_updated'] as String?,
        chatMembersUpdated: data['chat_members_updated'] as String?,
        teamsUpdated: data['teams_updated'] as String?,
        teamInfoUpdated: data['team_info_updated'] as String?,
      );

  static UpdatesStruct? maybeFromMap(dynamic data) =>
      data is Map ? UpdatesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'chats_updated': _chatsUpdated,
        'chat_messages_updated': _chatMessagesUpdated,
        'chat_members_updated': _chatMembersUpdated,
        'teams_updated': _teamsUpdated,
        'team_info_updated': _teamInfoUpdated,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chats_updated': serializeParam(
          _chatsUpdated,
          ParamType.String,
        ),
        'chat_messages_updated': serializeParam(
          _chatMessagesUpdated,
          ParamType.String,
        ),
        'chat_members_updated': serializeParam(
          _chatMembersUpdated,
          ParamType.String,
        ),
        'teams_updated': serializeParam(
          _teamsUpdated,
          ParamType.String,
        ),
        'team_info_updated': serializeParam(
          _teamInfoUpdated,
          ParamType.String,
        ),
      }.withoutNulls;

  static UpdatesStruct fromSerializableMap(Map<String, dynamic> data) =>
      UpdatesStruct(
        chatsUpdated: deserializeParam(
          data['chats_updated'],
          ParamType.String,
          false,
        ),
        chatMessagesUpdated: deserializeParam(
          data['chat_messages_updated'],
          ParamType.String,
          false,
        ),
        chatMembersUpdated: deserializeParam(
          data['chat_members_updated'],
          ParamType.String,
          false,
        ),
        teamsUpdated: deserializeParam(
          data['teams_updated'],
          ParamType.String,
          false,
        ),
        teamInfoUpdated: deserializeParam(
          data['team_info_updated'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UpdatesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UpdatesStruct &&
        chatsUpdated == other.chatsUpdated &&
        chatMessagesUpdated == other.chatMessagesUpdated &&
        chatMembersUpdated == other.chatMembersUpdated &&
        teamsUpdated == other.teamsUpdated &&
        teamInfoUpdated == other.teamInfoUpdated;
  }

  @override
  int get hashCode => const ListEquality().hash([
        chatsUpdated,
        chatMessagesUpdated,
        chatMembersUpdated,
        teamsUpdated,
        teamInfoUpdated
      ]);
}

UpdatesStruct createUpdatesStruct({
  String? chatsUpdated,
  String? chatMessagesUpdated,
  String? chatMembersUpdated,
  String? teamsUpdated,
  String? teamInfoUpdated,
}) =>
    UpdatesStruct(
      chatsUpdated: chatsUpdated,
      chatMessagesUpdated: chatMessagesUpdated,
      chatMembersUpdated: chatMembersUpdated,
      teamsUpdated: teamsUpdated,
      teamInfoUpdated: teamInfoUpdated,
    );
