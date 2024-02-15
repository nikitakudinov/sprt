// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> supaRealtime(
  String? tableName,
  Future<dynamic> Function() reloadAction,
) async {
  final supabase = SupaFlow.client;
  final data = await supabase.rpc('get_user_chats_id',
      params: {'p_player_uid': '730e44e1-893a-4040-8a47-914d30127965'});
  String table = tableName ?? '*';
  final channel = supabase.channel('public:' + table);
  channel.on(
    RealtimeListenTypes.postgresChanges,
    ChannelFilter(
        event: '*', schema: 'public', table: table, filter: 'id=in.("5","4")'),
    (payload, [ref]) {
      reloadAction();
      print('Reloaded.');
    },
  ).subscribe();
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
