import '../database.dart';

class Updates2Table extends SupabaseTable<Updates2Row> {
  @override
  String get tableName => 'updates2';

  @override
  Updates2Row createRow(Map<String, dynamic> data) => Updates2Row(data);
}

class Updates2Row extends SupabaseDataRow {
  Updates2Row(super.data);

  @override
  SupabaseTable get table => Updates2Table();

  DateTime? get chats => getField<DateTime>('chats');
  set chats(DateTime? value) => setField<DateTime>('chats', value);

  DateTime? get teams => getField<DateTime>('teams');
  set teams(DateTime? value) => setField<DateTime>('teams', value);

  DateTime? get chatMembers => getField<DateTime>('chat_members');
  set chatMembers(DateTime? value) => setField<DateTime>('chat_members', value);

  DateTime? get chatMessages => getField<DateTime>('chat_messages');
  set chatMessages(DateTime? value) =>
      setField<DateTime>('chat_messages', value);

  DateTime? get matchOpponents => getField<DateTime>('match_opponents');
  set matchOpponents(DateTime? value) =>
      setField<DateTime>('match_opponents', value);
}
