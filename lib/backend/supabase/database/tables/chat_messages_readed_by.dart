import '../database.dart';

class ChatMessagesReadedByTable extends SupabaseTable<ChatMessagesReadedByRow> {
  @override
  String get tableName => 'chat_messages_readed_by';

  @override
  ChatMessagesReadedByRow createRow(Map<String, dynamic> data) =>
      ChatMessagesReadedByRow(data);
}

class ChatMessagesReadedByRow extends SupabaseDataRow {
  ChatMessagesReadedByRow(super.data);

  @override
  SupabaseTable get table => ChatMessagesReadedByTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get playerUid => getField<String>('player_uid')!;
  set playerUid(String value) => setField<String>('player_uid', value);

  int get chatMessageId => getField<int>('chat_message_id')!;
  set chatMessageId(int value) => setField<int>('chat_message_id', value);
}
