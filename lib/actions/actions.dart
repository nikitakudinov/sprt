import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future baseloader(BuildContext context) async {
  ApiCallResponse? updates;
  ApiCallResponse? chatsmembers;

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
  } else {
    chatsmembers = await ChatsGroup.chatsCall.call();
    FFAppState().update(() {
      FFAppState().updateMAINDATAStruct(
        (e) => e
          ..chats = (getJsonField(
            (chatsmembers?.jsonBody ?? ''),
            r'''$[:].chats''',
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
