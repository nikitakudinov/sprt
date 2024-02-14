import '../database.dart';

class MessageDelitedByTable extends SupabaseTable<MessageDelitedByRow> {
  @override
  String get tableName => 'message_delited_by';

  @override
  MessageDelitedByRow createRow(Map<String, dynamic> data) =>
      MessageDelitedByRow(data);
}

class MessageDelitedByRow extends SupabaseDataRow {
  MessageDelitedByRow(super.data);

  @override
  SupabaseTable get table => MessageDelitedByTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get messageId => getField<int>('message_id')!;
  set messageId(int value) => setField<int>('message_id', value);

  String get playerUid => getField<String>('player_uid')!;
  set playerUid(String value) => setField<String>('player_uid', value);
}
