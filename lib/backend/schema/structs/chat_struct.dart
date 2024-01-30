// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatStruct extends BaseStruct {
  ChatStruct({
    int? id,
    String? lastMessage,
    String? lastmessageSander,
    String? updatedAt,
    int? chatOfTournament,
    int? chatOfTeam,
    String? chatType,
    List<ChatMemberStruct>? chatMembers,
  })  : _id = id,
        _lastMessage = lastMessage,
        _lastmessageSander = lastmessageSander,
        _updatedAt = updatedAt,
        _chatOfTournament = chatOfTournament,
        _chatOfTeam = chatOfTeam,
        _chatType = chatType,
        _chatMembers = chatMembers;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  set lastMessage(String? val) => _lastMessage = val;
  bool hasLastMessage() => _lastMessage != null;

  // "lastmessage_sander" field.
  String? _lastmessageSander;
  String get lastmessageSander => _lastmessageSander ?? '';
  set lastmessageSander(String? val) => _lastmessageSander = val;
  bool hasLastmessageSander() => _lastmessageSander != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  // "chat_of_tournament" field.
  int? _chatOfTournament;
  int get chatOfTournament => _chatOfTournament ?? 0;
  set chatOfTournament(int? val) => _chatOfTournament = val;
  void incrementChatOfTournament(int amount) =>
      _chatOfTournament = chatOfTournament + amount;
  bool hasChatOfTournament() => _chatOfTournament != null;

  // "chat_of_team" field.
  int? _chatOfTeam;
  int get chatOfTeam => _chatOfTeam ?? 0;
  set chatOfTeam(int? val) => _chatOfTeam = val;
  void incrementChatOfTeam(int amount) => _chatOfTeam = chatOfTeam + amount;
  bool hasChatOfTeam() => _chatOfTeam != null;

  // "chat_type" field.
  String? _chatType;
  String get chatType => _chatType ?? '';
  set chatType(String? val) => _chatType = val;
  bool hasChatType() => _chatType != null;

  // "chat_members" field.
  List<ChatMemberStruct>? _chatMembers;
  List<ChatMemberStruct> get chatMembers => _chatMembers ?? const [];
  set chatMembers(List<ChatMemberStruct>? val) => _chatMembers = val;
  void updateChatMembers(Function(List<ChatMemberStruct>) updateFn) =>
      updateFn(_chatMembers ??= []);
  bool hasChatMembers() => _chatMembers != null;

  static ChatStruct fromMap(Map<String, dynamic> data) => ChatStruct(
        id: castToType<int>(data['id']),
        lastMessage: data['last_message'] as String?,
        lastmessageSander: data['lastmessage_sander'] as String?,
        updatedAt: data['updated_at'] as String?,
        chatOfTournament: castToType<int>(data['chat_of_tournament']),
        chatOfTeam: castToType<int>(data['chat_of_team']),
        chatType: data['chat_type'] as String?,
        chatMembers: getStructList(
          data['chat_members'],
          ChatMemberStruct.fromMap,
        ),
      );

  static ChatStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChatStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'last_message': _lastMessage,
        'lastmessage_sander': _lastmessageSander,
        'updated_at': _updatedAt,
        'chat_of_tournament': _chatOfTournament,
        'chat_of_team': _chatOfTeam,
        'chat_type': _chatType,
        'chat_members': _chatMembers?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'last_message': serializeParam(
          _lastMessage,
          ParamType.String,
        ),
        'lastmessage_sander': serializeParam(
          _lastmessageSander,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'chat_of_tournament': serializeParam(
          _chatOfTournament,
          ParamType.int,
        ),
        'chat_of_team': serializeParam(
          _chatOfTeam,
          ParamType.int,
        ),
        'chat_type': serializeParam(
          _chatType,
          ParamType.String,
        ),
        'chat_members': serializeParam(
          _chatMembers,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ChatStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        lastMessage: deserializeParam(
          data['last_message'],
          ParamType.String,
          false,
        ),
        lastmessageSander: deserializeParam(
          data['lastmessage_sander'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        chatOfTournament: deserializeParam(
          data['chat_of_tournament'],
          ParamType.int,
          false,
        ),
        chatOfTeam: deserializeParam(
          data['chat_of_team'],
          ParamType.int,
          false,
        ),
        chatType: deserializeParam(
          data['chat_type'],
          ParamType.String,
          false,
        ),
        chatMembers: deserializeStructParam<ChatMemberStruct>(
          data['chat_members'],
          ParamType.DataStruct,
          true,
          structBuilder: ChatMemberStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ChatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChatStruct &&
        id == other.id &&
        lastMessage == other.lastMessage &&
        lastmessageSander == other.lastmessageSander &&
        updatedAt == other.updatedAt &&
        chatOfTournament == other.chatOfTournament &&
        chatOfTeam == other.chatOfTeam &&
        chatType == other.chatType &&
        listEquality.equals(chatMembers, other.chatMembers);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        lastMessage,
        lastmessageSander,
        updatedAt,
        chatOfTournament,
        chatOfTeam,
        chatType,
        chatMembers
      ]);
}

ChatStruct createChatStruct({
  int? id,
  String? lastMessage,
  String? lastmessageSander,
  String? updatedAt,
  int? chatOfTournament,
  int? chatOfTeam,
  String? chatType,
}) =>
    ChatStruct(
      id: id,
      lastMessage: lastMessage,
      lastmessageSander: lastmessageSander,
      updatedAt: updatedAt,
      chatOfTournament: chatOfTournament,
      chatOfTeam: chatOfTeam,
      chatType: chatType,
    );
