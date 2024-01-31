import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'appinfo_model.dart';
export 'appinfo_model.dart';

class AppinfoWidget extends StatefulWidget {
  const AppinfoWidget({super.key});

  @override
  State<AppinfoWidget> createState() => _AppinfoWidgetState();
}

class _AppinfoWidgetState extends State<AppinfoWidget> {
  late AppinfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppinfoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.players = await PlayersGroup.playersCall.call();
      _model.teams = await TeamsGroup.teamsCall.call();
      _model.tournaments = await TournamentsGroup.tournamentsCall.call();
      _model.chats = await ChatsGroup.getchatsCall.call(
        uid: currentUserUid,
      );
      _model.chatmessages = await ChatsGroup.chatmessagesAAACall.call(
        uid: currentUserUid,
      );
      _model.chatmembers = await ChatsGroup.authchatmembersAAACall.call(
        uid: currentUserUid,
      );
      setState(() {
        FFAppState().updateMAINDATAStruct(
          (e) => e
            ..chats = ((_model.chats?.jsonBody ?? '')
                    .toList()
                    .map<ChatStruct?>(ChatStruct.maybeFromMap)
                    .toList() as Iterable<ChatStruct?>)
                .withoutNulls
                .toList()
            ..chatMessages = ((_model.chatmessages?.jsonBody ?? '')
                    .toList()
                    .map<ChatMessageStruct?>(ChatMessageStruct.maybeFromMap)
                    .toList() as Iterable<ChatMessageStruct?>)
                .withoutNulls
                .toList()
            ..chatMembers = ((_model.chatmembers?.jsonBody ?? '')
                    .toList()
                    .map<ChatMemberStruct?>(ChatMemberStruct.maybeFromMap)
                    .toList() as Iterable<ChatMemberStruct?>)
                .withoutNulls
                .toList()
            ..teams = ((_model.teams?.jsonBody ?? '')
                    .toList()
                    .map<TeamStruct?>(TeamStruct.maybeFromMap)
                    .toList() as Iterable<TeamStruct?>)
                .withoutNulls
                .toList()
            ..players = ((_model.players?.jsonBody ?? '')
                    .toList()
                    .map<PlayerStruct?>(PlayerStruct.maybeFromMap)
                    .toList() as Iterable<PlayerStruct?>)
                .withoutNulls
                .toList(),
        );
      });
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'DEV info',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'App state',
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'MAIN DATA',
                        style: FlutterFlowTheme.of(context).labelLarge,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'count',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'last update',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'PLAYERS',
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '1',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '1',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'CHATS',
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        FFAppState().MAINDATA.chats.length.toString(),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        valueOrDefault<String>(
                          FFAppState().UPDATES.chatsUpdated,
                          '15.01 22:10',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'chat_messages',
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        FFAppState().MAINDATA.chatMessages.length.toString(),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        valueOrDefault<String>(
                          FFAppState().UPDATES.chatMessagesUpdated,
                          '15.02 15:20',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'chat_members',
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        FFAppState().MAINDATA.chatMembers.length.toString(),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        valueOrDefault<String>(
                          FFAppState().UPDATES.chatMembersUpdated,
                          '15.02 15:20',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
