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

  String get playerUid => getField<String>('player_uid')!;
  set playerUid(String value) => setField<String>('player_uid', value);

  DateTime get playerCreatedAt => getField<DateTime>('player_created_at')!;
  set playerCreatedAt(DateTime value) =>
      setField<DateTime>('player_created_at', value);

  String? get playerNickname => getField<String>('player_nickname');
  set playerNickname(String? value) =>
      setField<String>('player_nickname', value);
}
