// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessageStruct extends BaseStruct {
  ChatMessageStruct({
    int? id,
    String? createdAt,
    String? body,
    String? sander,
    int? chatId,
    String? updatedAt,
  })  : _id = id,
        _createdAt = createdAt,
        _body = body,
        _sander = sander,
        _chatId = chatId,
        _updatedAt = updatedAt;

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

  // "body" field.
  String? _body;
  String get body => _body ?? '';
  set body(String? val) => _body = val;
  bool hasBody() => _body != null;

  // "sander" field.
  String? _sander;
  String get sander => _sander ?? '';
  set sander(String? val) => _sander = val;
  bool hasSander() => _sander != null;

  // "chat_id" field.
  int? _chatId;
  int get chatId => _chatId ?? 0;
  set chatId(int? val) => _chatId = val;
  void incrementChatId(int amount) => _chatId = chatId + amount;
  bool hasChatId() => _chatId != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  static ChatMessageStruct fromMap(Map<String, dynamic> data) =>
      ChatMessageStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        body: data['body'] as String?,
        sander: data['sander'] as String?,
        chatId: castToType<int>(data['chat_id']),
        updatedAt: data['updated_at'] as String?,
      );

  static ChatMessageStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatMessageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'body': _body,
        'sander': _sander,
        'chat_id': _chatId,
        'updated_at': _updatedAt,
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
        'body': serializeParam(
          _body,
          ParamType.String,
        ),
        'sander': serializeParam(
          _sander,
          ParamType.String,
        ),
        'chat_id': serializeParam(
          _chatId,
          ParamType.int,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChatMessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatMessageStruct(
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
        body: deserializeParam(
          data['body'],
          ParamType.String,
          false,
        ),
        sander: deserializeParam(
          data['sander'],
          ParamType.String,
          false,
        ),
        chatId: deserializeParam(
          data['chat_id'],
          ParamType.int,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChatMessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatMessageStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        body == other.body &&
        sander == other.sander &&
        chatId == other.chatId &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, body, sander, chatId, updatedAt]);
}

ChatMessageStruct createChatMessageStruct({
  int? id,
  String? createdAt,
  String? body,
  String? sander,
  int? chatId,
  String? updatedAt,
}) =>
    ChatMessageStruct(
      id: id,
      createdAt: createdAt,
      body: body,
      sander: sander,
      chatId: chatId,
      updatedAt: updatedAt,
    );
