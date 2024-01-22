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

  DateTime get playerCreatedAt => getField<DateTime>('player_created_at')!;
  set playerCreatedAt(DateTime value) =>
      setField<DateTime>('player_created_at', value);

  DateTime? get playerUpdateAt => getField<DateTime>('player_update_at');
  set playerUpdateAt(DateTime? value) =>
      setField<DateTime>('player_update_at', value);

  String? get playerNickname => getField<String>('player_nickname');
  set playerNickname(String? value) =>
      setField<String>('player_nickname', value);

  String? get playerTag => getField<String>('player_tag');
  set playerTag(String? value) => setField<String>('player_tag', value);

  String? get playerFlag => getField<String>('player_flag');
  set playerFlag(String? value) => setField<String>('player_flag', value);

  String? get playerCountrie => getField<String>('player_countrie');
  set playerCountrie(String? value) =>
      setField<String>('player_countrie', value);

  String? get playerAvatar => getField<String>('player_avatar');
  set playerAvatar(String? value) => setField<String>('player_avatar', value);

  String? get playerUid => getField<String>('player_uid');
  set playerUid(String? value) => setField<String>('player_uid', value);

  int? get playerTeam => getField<int>('player_team');
  set playerTeam(int? value) => setField<int>('player_team', value);

  bool? get playerTeamLineup => getField<bool>('player_team_lineup');
  set playerTeamLineup(bool? value) =>
      setField<bool>('player_team_lineup', value);

  String? get playerTeamRole => getField<String>('player_team_role');
  set playerTeamRole(String? value) =>
      setField<String>('player_team_role', value);

  bool? get playerOnline => getField<bool>('player_online');
  set playerOnline(bool? value) => setField<bool>('player_online', value);

  DateTime? get playerTeamJoinedAt =>
      getField<DateTime>('player_team_joined_at');
  set playerTeamJoinedAt(DateTime? value) =>
      setField<DateTime>('player_team_joined_at', value);
}
