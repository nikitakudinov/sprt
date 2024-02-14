import '../database.dart';

class PlayerFriendsTable extends SupabaseTable<PlayerFriendsRow> {
  @override
  String get tableName => 'player_friends';

  @override
  PlayerFriendsRow createRow(Map<String, dynamic> data) =>
      PlayerFriendsRow(data);
}

class PlayerFriendsRow extends SupabaseDataRow {
  PlayerFriendsRow(super.data);

  @override
  SupabaseTable get table => PlayerFriendsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get playerUid => getField<String>('player_uid')!;
  set playerUid(String value) => setField<String>('player_uid', value);

  String get friendUid => getField<String>('friend_uid')!;
  set friendUid(String value) => setField<String>('friend_uid', value);
}
