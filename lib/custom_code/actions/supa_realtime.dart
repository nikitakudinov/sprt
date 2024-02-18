// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
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
  String? uid,
  String? tableName,
  Future<dynamic> Function() reloadAction,
) async {
  final supabase = SupaFlow.client;
  final authSubscription = supabase.auth.onAuthStateChange.listen((data) {
    final AuthChangeEvent event = data.event;
    final Session? session = data.session;
  });
  final data =
      await supabase.rpc('get_user_chats_id', params: {'p_player_uid': uid});
  String str = data.join(", ");
  String myString = 'id=in.(' + str + ')';
  String table = tableName ?? '*';
  final channel = supabase.channel('public:' + table);
  channel.on(
    RealtimeListenTypes.postgresChanges,
    ChannelFilter(event: '*', schema: 'public', table: table, filter: myString),
    (payload, [ref]) {
      reloadAction();
      print(str);
    },
  ).subscribe();
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
