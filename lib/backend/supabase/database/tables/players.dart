import '../database.dart';

class PlayersTable extends SupabaseTable<PlayersRow> {
  @override
  String get tableName => 'players';

  @override
  PlayersRow createRow(Map<String, dynamic> data) => PlayersRow(data);
}

class PlayersRow extends SupabaseDataRow {
  PlayersRow(super.data);

  @override
  SupabaseTable get table => PlayersTable();

  int get playerId => getField<int>('player_id')!;
  set playerId(int value) => setField<int>('player_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get playerNicknmame => getField<String>('player_nicknmame');
  set playerNicknmame(String? value) =>
      setField<String>('player_nicknmame', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
