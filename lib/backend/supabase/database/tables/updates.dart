import '../database.dart';

class UpdatesTable extends SupabaseTable<UpdatesRow> {
  @override
  String get tableName => 'updates';

  @override
  UpdatesRow createRow(Map<String, dynamic> data) => UpdatesRow(data);
}

class UpdatesRow extends SupabaseDataRow {
  UpdatesRow(super.data);

  @override
  SupabaseTable get table => UpdatesTable();

  DateTime? get chats => getField<DateTime>('chats');
  set chats(DateTime? value) => setField<DateTime>('chats', value);

  DateTime? get teams => getField<DateTime>('teams');
  set teams(DateTime? value) => setField<DateTime>('teams', value);
}
