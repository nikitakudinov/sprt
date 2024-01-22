import '../database.dart';

class TeamMembersTable extends SupabaseTable<TeamMembersRow> {
  @override
  String get tableName => 'team_members';

  @override
  TeamMembersRow createRow(Map<String, dynamic> data) => TeamMembersRow(data);
}

class TeamMembersRow extends SupabaseDataRow {
  TeamMembersRow(super.data);

  @override
  SupabaseTable get table => TeamMembersTable();

  int get teamMembersId => getField<int>('team_members_id')!;
  set teamMembersId(int value) => setField<int>('team_members_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get teamMembersTeamId => getField<int>('team_members_team_id')!;
  set teamMembersTeamId(int value) =>
      setField<int>('team_members_team_id', value);

  int get teamMembersPlayerId => getField<int>('team_members_player_id')!;
  set teamMembersPlayerId(int value) =>
      setField<int>('team_members_player_id', value);
}
