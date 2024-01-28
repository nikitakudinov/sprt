import '../database.dart';

class TournamentInfoTable extends SupabaseTable<TournamentInfoRow> {
  @override
  String get tableName => 'tournament_info';

  @override
  TournamentInfoRow createRow(Map<String, dynamic> data) =>
      TournamentInfoRow(data);
}

class TournamentInfoRow extends SupabaseDataRow {
  TournamentInfoRow(super.data);

  @override
  SupabaseTable get table => TournamentInfoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get tournamentId => getField<int>('tournament_id');
  set tournamentId(int? value) => setField<int>('tournament_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get tag => getField<String>('tag');
  set tag(String? value) => setField<String>('tag', value);

  int? get country => getField<int>('country');
  set country(int? value) => setField<int>('country', value);
}
