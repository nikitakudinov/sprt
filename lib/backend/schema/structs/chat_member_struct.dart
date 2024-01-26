// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMemberStruct extends BaseStruct {
  ChatMemberStruct({
    int? id,
    int? chatId,
    String? playerUid,
    String? updatedAt,
  })  : _id = id,
        _chatId = chatId,
        _playerUid = playerUid,
        _updatedAt = updatedAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "chat_id" field.
  int? _chatId;
  int get chatId => _chatId ?? 0;
  set chatId(int? val) => _chatId = val;
  void incrementChatId(int amount) => _chatId = chatId + amount;
  bool hasChatId() => _chatId != null;

  // "player_uid" field.
  String? _playerUid;
  String get playerUid => _playerUid ?? '';
  set playerUid(String? val) => _playerUid = val;
  bool hasPlayerUid() => _playerUid != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  static ChatMemberStruct fromMap(Map<String, dynamic> data) =>
      ChatMemberStruct(
        id: castToType<int>(data['id']),
        chatId: castToType<int>(data['chat_id']),
        playerUid: data['player_uid'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static ChatMemberStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatMemberStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'chat_id': _chatId,
        'player_uid': _playerUid,
        'updated_at': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'chat_id': serializeParam(
          _chatId,
          ParamType.int,
        ),
        'player_uid': serializeParam(
          _playerUid,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChatMemberStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatMemberStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        chatId: deserializeParam(
          data['chat_id'],
          ParamType.int,
          false,
        ),
        playerUid: deserializeParam(
          data['player_uid'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChatMemberStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatMemberStruct &&
        id == other.id &&
        chatId == other.chatId &&
        playerUid == other.playerUid &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, chatId, playerUid, updatedAt]);
}

ChatMemberStruct createChatMemberStruct({
  int? id,
  int? chatId,
  String? playerUid,
  String? updatedAt,
}) =>
    ChatMemberStruct(
      id: id,
      chatId: chatId,
      playerUid: playerUid,
      updatedAt: updatedAt,
    );
