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

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get lastMessage => getField<String>('last_message');
  set lastMessage(String? value) => setField<String>('last_message', value);

  String? get lastmessageSander => getField<String>('lastmessage_sander');
  set lastmessageSander(String? value) =>
      setField<String>('lastmessage_sander', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get chatOfTeam => getField<int>('chat_of_team');
  set chatOfTeam(int? value) => setField<int>('chat_of_team', value);

  String? get chatType => getField<String>('chat_type');
  set chatType(String? value) => setField<String>('chat_type', value);

  int? get chatOfTournament => getField<int>('chat_of_tournament');
  set chatOfTournament(int? value) =>
      setField<int>('chat_of_tournament', value);
}
