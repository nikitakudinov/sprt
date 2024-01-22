import '../database.dart';

class ChatsTable extends SupabaseTable<ChatsRow> {
  @override
  String get tableName => 'chats';

  @override
  ChatsRow createRow(Map<String, dynamic> data) => ChatsRow(data);
}

class ChatsRow extends SupabaseDataRow {
  ChatsRow(super.data);

  @override
  SupabaseTable get table => ChatsTable();

  int get chatId => getField<int>('chat_id')!;
  set chatId(int value) => setField<int>('chat_id', value);

  DateTime get chatUpdatedAt => getField<DateTime>('chat_updated_at')!;
  set chatUpdatedAt(DateTime value) =>
      setField<DateTime>('chat_updated_at', value);

  String? get chatLastMessage => getField<String>('chat_last_message');
  set chatLastMessage(String? value) =>
      setField<String>('chat_last_message', value);

  int? get chatOfTeam => getField<int>('chat_of_team');
  set chatOfTeam(int? value) => setField<int>('chat_of_team', value);

  String? get chatChattype => getField<String>('chat_chattype');
  set chatChattype(String? value) => setField<String>('chat_chattype', value);

  String? get chatLastMessageSander =>
      getField<String>('chat_last_message_sander');
  set chatLastMessageSander(String? value) =>
      setField<String>('chat_last_message_sander', value);

  List<String> get chatMembers => getListField<String>('chat_members');
  set chatMembers(List<String>? value) =>
      setListField<String>('chat_members', value);
}
