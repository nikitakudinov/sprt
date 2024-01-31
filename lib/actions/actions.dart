import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future baseloader(BuildContext context) async {
  ApiCallResponse? updates;
  ApiCallResponse? chats;
  ApiCallResponse? chatmembers;
  ApiCallResponse? chatmesages;

  updates = await UpdatesGroup.getauthuserdataupdatesCall.call(
    uid: currentUserUid,
  );
  if (UpdatesGroup.getauthuserdataupdatesCall.chatsupdated(
        (updates.jsonBody ?? ''),
      ) !=
      FFAppState().UPDATES.chatsUpdated) {
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
          ..chatsUpdated = UpdatesGroup.getauthuserdataupdatesCall.chatsupdated(
            (updates?.jsonBody ?? ''),
          )
          ..chatMessagesUpdated =
              UpdatesGroup.getauthuserdataupdatesCall.chatmessagesupdated(
            (updates?.jsonBody ?? ''),
          )
          ..chatMembersUpdated =
              UpdatesGroup.getauthuserdataupdatesCall.chatmembersupdated(
            (updates?.jsonBody ?? ''),
          )
          ..teamsUpdated = UpdatesGroup.getauthuserdataupdatesCall.teamsupdated(
            (updates?.jsonBody ?? ''),
          )
          ..teamInfoUpdated =
              UpdatesGroup.getauthuserdataupdatesCall.teaminfoupdated(
            (updates?.jsonBody ?? ''),
          ),
      );
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'CHATS UPDATED',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 1000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  } else if (UpdatesGroup.getauthuserdataupdatesCall.chatmembersupdated(
        (updates.jsonBody ?? ''),
      ) !=
      FFAppState().UPDATES.chatMembersUpdated) {
    chatmembers = await ChatsGroup.authchatmembersAAACall.call(
      uid: currentUserUid,
    );
    FFAppState().update(() {
      FFAppState().updateMAINDATAStruct(
        (e) => e
          ..chatMembers = ((chatmembers?.jsonBody ?? '')
                  .toList()
                  .map<ChatMemberStruct?>(ChatMemberStruct.maybeFromMap)
                  .toList() as Iterable<ChatMemberStruct?>)
              .withoutNulls
              .toList(),
      );
      FFAppState().updateUPDATESStruct(
        (e) => e
          ..chatsUpdated = UpdatesGroup.getauthuserdataupdatesCall.chatsupdated(
            (updates?.jsonBody ?? ''),
          )
          ..chatMessagesUpdated =
              UpdatesGroup.getauthuserdataupdatesCall.chatmessagesupdated(
            (updates?.jsonBody ?? ''),
          )
          ..chatMembersUpdated =
              UpdatesGroup.getauthuserdataupdatesCall.chatmembersupdated(
            (updates?.jsonBody ?? ''),
          )
          ..teamsUpdated = UpdatesGroup.getauthuserdataupdatesCall.teamsupdated(
            (updates?.jsonBody ?? ''),
          )
          ..teamInfoUpdated =
              UpdatesGroup.getauthuserdataupdatesCall.teaminfoupdated(
            (updates?.jsonBody ?? ''),
          ),
      );
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'CHAT MEMBERS UPDATED',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 1000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  } else if (UpdatesGroup.getauthuserdataupdatesCall.chatmessagesupdated(
        (updates.jsonBody ?? ''),
      ) !=
      FFAppState().UPDATES.chatMessagesUpdated) {
    chatmesages = await ChatsGroup.chatmessagesAAACall.call(
      uid: currentUserUid,
    );
    FFAppState().update(() {
      FFAppState().updateMAINDATAStruct(
        (e) => e
          ..chatMessages = ((chatmesages?.jsonBody ?? '')
                  .toList()
                  .map<ChatMessageStruct?>(ChatMessageStruct.maybeFromMap)
                  .toList() as Iterable<ChatMessageStruct?>)
              .withoutNulls
              .toList(),
      );
      FFAppState().updateUPDATESStruct(
        (e) => e
          ..chatsUpdated = UpdatesGroup.getauthuserdataupdatesCall.chatsupdated(
            (updates?.jsonBody ?? ''),
          )
          ..chatMessagesUpdated =
              UpdatesGroup.getauthuserdataupdatesCall.chatmessagesupdated(
            (updates?.jsonBody ?? ''),
          )
          ..chatMembersUpdated =
              UpdatesGroup.getauthuserdataupdatesCall.chatmembersupdated(
            (updates?.jsonBody ?? ''),
          )
          ..teamsUpdated = UpdatesGroup.getauthuserdataupdatesCall.teamsupdated(
            (updates?.jsonBody ?? ''),
          )
          ..teamInfoUpdated =
              UpdatesGroup.getauthuserdataupdatesCall.teaminfoupdated(
            (updates?.jsonBody ?? ''),
          ),
      );
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'CHAT MESSAGES UPDATED',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 1000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
  } else {
    FFAppState().update(() {
      FFAppState().updateUPDATESStruct(
        (e) => e
          ..chatsUpdated = UpdatesGroup.getauthuserdataupdatesCall.chatsupdated(
            (updates?.jsonBody ?? ''),
          )
          ..chatMessagesUpdated =
              UpdatesGroup.getauthuserdataupdatesCall.chatmessagesupdated(
            (updates?.jsonBody ?? ''),
          )
          ..chatMembersUpdated =
              UpdatesGroup.getauthuserdataupdatesCall.chatmembersupdated(
            (updates?.jsonBody ?? ''),
          )
          ..teamsUpdated = UpdatesGroup.getauthuserdataupdatesCall.teamsupdated(
            (updates?.jsonBody ?? ''),
          )
          ..teamInfoUpdated =
              UpdatesGroup.getauthuserdataupdatesCall.teaminfoupdated(
            (updates?.jsonBody ?? ''),
          ),
      );
    });
  }
}
