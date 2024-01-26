import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future baseloader(BuildContext context) async {
  ApiCallResponse? updates;
  ApiCallResponse? chatidarray;
  ApiCallResponse? chats;

  updates = await UpdatesGroup.updatesCall.call();
  if (FFAppState().UPDATES.chats ==
      UpdatesGroup.updatesCall.chats(
        (updates.jsonBody ?? ''),
      )) {
    FFAppState().updateUPDATESStruct(
      (e) => e
        ..chats = UpdatesGroup.updatesCall.chats(
          (updates?.jsonBody ?? ''),
        ),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'нет',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 500),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  } else {
    chatidarray = await ChatsGroup.authchatmembersCall.call(
      playerUid: currentUserUid,
    );
    chats = await ChatsGroup.chatsbyidsCall.call(
      chatIds: ChatsGroup.authchatmembersCall
          .chatid(
            (chatidarray.jsonBody ?? ''),
          )
          ?.toString(),
    );
    FFAppState().update(() {
      FFAppState().updateMAINDATAStruct(
        (e) => e
          ..chats = (getJsonField(
            (chats?.jsonBody ?? ''),
            r'''$''',
            true,
          )!
                  .toList()
                  .map<ChatStruct?>(ChatStruct.maybeFromMap)
                  .toList() as Iterable<ChatStruct?>)
              .withoutNulls
              .toList(),
      );
      FFAppState().updateUPDATESStruct(
        (e) => e
          ..chats = UpdatesGroup.updatesCall.chats(
            (updates?.jsonBody ?? ''),
          ),
      );
    });
  }
}
