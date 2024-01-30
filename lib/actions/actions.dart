import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future baseloader(BuildContext context) async {
  ApiCallResponse? updates;
  ApiCallResponse? chats;

  updates = await UpdatesGroup.rpcgetupdatesCall.call(
    uid: currentUserUid,
  );
  if (!((FFAppState().UPDATES.chatsUpdated ==
          UpdatesGroup.rpcgetupdatesCall.chatsupdated(
            (updates.jsonBody ?? ''),
          )) ||
      (FFAppState().UPDATES.chatMessagesUpdated ==
          UpdatesGroup.rpcgetupdatesCall.chatmessagesupdated(
            (updates.jsonBody ?? ''),
          )) ||
      (FFAppState().UPDATES.chatMembersUpdated ==
          UpdatesGroup.rpcgetupdatesCall.chatmembersupdated(
            (updates.jsonBody ?? ''),
          )))) {
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
              .toList(),
      );
      FFAppState().updateUPDATESStruct(
        (e) => e
          ..chatsUpdated = UpdatesGroup.rpcgetupdatesCall.chatsupdated(
            (updates?.jsonBody ?? ''),
          )
          ..chatMessagesUpdated =
              UpdatesGroup.rpcgetupdatesCall.chatmessagesupdated(
            (updates?.jsonBody ?? ''),
          )
          ..chatMembersUpdated =
              UpdatesGroup.rpcgetupdatesCall.chatmembersupdated(
            (updates?.jsonBody ?? ''),
          )
          ..teamsUpdated = UpdatesGroup.rpcgetupdatesCall.teamsupdated(
            (updates?.jsonBody ?? ''),
          )
          ..teamInfoUpdated = UpdatesGroup.rpcgetupdatesCall.teaminfoupdated(
            (updates?.jsonBody ?? ''),
          ),
      );
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'UPDATED',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 1000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  }
}
