import '../database.dart';

class PlayersView1Table extends SupabaseTable<PlayersView1Row> {
  @override
  String get tableName => 'players_view1';

  @override
  PlayersView1Row createRow(Map<String, dynamic> data) => PlayersView1Row(data);
}

class PlayersView1Row extends SupabaseDataRow {
  PlayersView1Row(super.data);

  @override
  SupabaseTable get table => PlayersView1Table();

  int? get playerId => getField<int>('player_id');
  set playerId(int? value) => setField<int>('player_id', value);

  String? get playerNicknmame => getField<String>('player_nicknmame');
  set playerNicknmame(String? value) =>
      setField<String>('player_nicknmame', value);

  int? get playerTeam => getField<int>('player_team');
  set playerTeam(int? value) => setField<int>('player_team', value);
}
