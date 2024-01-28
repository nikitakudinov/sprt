import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future baseloader(BuildContext context) async {
  ApiCallResponse? updates;
  ApiCallResponse? chatMembers;
  ApiCallResponse? chats;

  updates = await UpdatesGroup.updatesCall.call();
  if ((FFAppState().UPDATES.chats !=
          UpdatesGroup.updatesCall.chats(
            (updates.jsonBody ?? ''),
          )) ||
      (FFAppState().UPDATES.chatMembers !=
          UpdatesGroup.updatesCall.chatmembers(
            (updates.jsonBody ?? ''),
          ))) {
    chatMembers = await ChatsGroup.authchatmembersCall.call(
      playerUid: currentUserUid,
    );
    chats = await ChatsGroup.getchatsCall.call(
      uid: currentUserUid,
    );
    FFAppState().update(() {
      FFAppState().updateMAINDATAStruct(
        (e) => e
          ..chats = ((chats?.jsonBody ?? '')
                  .toList()
                  .map<ChatStruct?>(ChatStruct.maybeFromMap)
                  .toList() as Iterable<ChatStruct?>)
              .withoutNulls
              .toList()
          ..chatMembers = ((chatMembers?.jsonBody ?? '')
                  .toList()
                  .map<ChatMemberStruct?>(ChatMemberStruct.maybeFromMap)
                  .toList() as Iterable<ChatMemberStruct?>)
              .withoutNulls
              .toList(),
      );
    });
  }
}
