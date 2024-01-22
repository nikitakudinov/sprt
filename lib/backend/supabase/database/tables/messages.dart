import '../database.dart';

class MessagesTable extends SupabaseTable<MessagesRow> {
  @override
  String get tableName => 'messages';

  @override
  MessagesRow createRow(Map<String, dynamic> data) => MessagesRow(data);
}

class MessagesRow extends SupabaseDataRow {
  MessagesRow(super.data);

  @override
  SupabaseTable get table => MessagesTable();

  int get messageId => getField<int>('message_id')!;
  set messageId(int value) => setField<int>('message_id', value);

  DateTime get messageSandedAt => getField<DateTime>('message_sanded_at')!;
  set messageSandedAt(DateTime value) =>
      setField<DateTime>('message_sanded_at', value);

  String? get messageSander => getField<String>('message_sander');
  set messageSander(String? value) => setField<String>('message_sander', value);

  String? get messageBody => getField<String>('message_body');
  set messageBody(String? value) => setField<String>('message_body', value);

  int? get messageChat => getField<int>('message_chat');
  set messageChat(int? value) => setField<int>('message_chat', value);

  String? get messageType => getField<String>('message_type');
  set messageType(String? value) => setField<String>('message_type', value);

  String? get messageSanderAvatar => getField<String>('message_sander_avatar');
  set messageSanderAvatar(String? value) =>
      setField<String>('message_sander_avatar', value);
}
