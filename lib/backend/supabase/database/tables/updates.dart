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

  DateTime? get chatMembers => getField<DateTime>('chat_members');
  set chatMembers(DateTime? value) => setField<DateTime>('chat_members', value);

  DateTime? get chatMessages => getField<DateTime>('chat_messages');
  set chatMessages(DateTime? value) =>
      setField<DateTime>('chat_messages', value);

  DateTime? get matchOpponents => getField<DateTime>('match_opponents');
  set matchOpponents(DateTime? value) =>
      setField<DateTime>('match_opponents', value);

  DateTime? get matches => getField<DateTime>('matches');
  set matches(DateTime? value) => setField<DateTime>('matches', value);

  DateTime? get players => getField<DateTime>('players');
  set players(DateTime? value) => setField<DateTime>('players', value);

  DateTime? get teamInfo => getField<DateTime>('team_info');
  set teamInfo(DateTime? value) => setField<DateTime>('team_info', value);

  DateTime? get tournamentInfo => getField<DateTime>('tournament_info');
  set tournamentInfo(DateTime? value) =>
      setField<DateTime>('tournament_info', value);
}
