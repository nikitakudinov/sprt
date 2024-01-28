import '../database.dart';

class TeamInfoTable extends SupabaseTable<TeamInfoRow> {
  @override
  String get tableName => 'team_info';

  @override
  TeamInfoRow createRow(Map<String, dynamic> data) => TeamInfoRow(data);
}

class TeamInfoRow extends SupabaseDataRow {
  TeamInfoRow(super.data);

  @override
  SupabaseTable get table => TeamInfoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get tag => getField<String>('tag');
  set tag(String? value) => setField<String>('tag', value);

  int? get country => getField<int>('country');
  set country(int? value) => setField<int>('country', value);
}
