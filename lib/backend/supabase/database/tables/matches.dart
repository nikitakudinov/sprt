import '../database.dart';

class MatchesTable extends SupabaseTable<MatchesRow> {
  @override
  String get tableName => 'matches';

  @override
  MatchesRow createRow(Map<String, dynamic> data) => MatchesRow(data);
}

class MatchesRow extends SupabaseDataRow {
  MatchesRow(super.data);

  @override
  SupabaseTable get table => MatchesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get forTournament => getField<int>('for_tournament');
  set forTournament(int? value) => setField<int>('for_tournament', value);

  DateTime? get dateOfGame => getField<DateTime>('date_of_game');
  set dateOfGame(DateTime? value) => setField<DateTime>('date_of_game', value);

  int? get opponents => getField<int>('opponents');
  set opponents(int? value) => setField<int>('opponents', value);
}
