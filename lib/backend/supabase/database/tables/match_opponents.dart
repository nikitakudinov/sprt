import '../database.dart';

class MatchOpponentsTable extends SupabaseTable<MatchOpponentsRow> {
  @override
  String get tableName => 'match_opponents';

  @override
  MatchOpponentsRow createRow(Map<String, dynamic> data) =>
      MatchOpponentsRow(data);
}

class MatchOpponentsRow extends SupabaseDataRow {
  MatchOpponentsRow(super.data);

  @override
  SupabaseTable get table => MatchOpponentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  int? get scores => getField<int>('scores');
  set scores(int? value) => setField<int>('scores', value);

  int? get matchId => getField<int>('match_id');
  set matchId(int? value) => setField<int>('match_id', value);
}
