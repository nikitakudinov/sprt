import '../database.dart';

class ChatDelitedByTable extends SupabaseTable<ChatDelitedByRow> {
  @override
  String get tableName => 'chat_delited_by';

  @override
  ChatDelitedByRow createRow(Map<String, dynamic> data) =>
      ChatDelitedByRow(data);
}

class ChatDelitedByRow extends SupabaseDataRow {
  ChatDelitedByRow(super.data);

  @override
  SupabaseTable get table => ChatDelitedByTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get chatId => getField<int>('chat_id')!;
  set chatId(int value) => setField<int>('chat_id', value);

  String get playerUid => getField<String>('player_uid')!;
  set playerUid(String value) => setField<String>('player_uid', value);
}
