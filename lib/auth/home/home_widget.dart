import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.supaRealtime(
        currentUserUid,
        'chats',
        () async {
          _model.chatsData = await ChatsGroup.getchatsCall.call(
            uid: currentUserUid,
          );
          _model.messagesData = await ChatsGroup.getmessagesCall.call(
            uid: currentUserUid,
          );
          FFAppState().update(() {
            FFAppState().updateMAINDATAStruct(
              (e) => e
                ..chats = ((_model.chatsData?.jsonBody ?? '')
                        .toList()
                        .map<ChatStruct?>(ChatStruct.maybeFromMap)
                        .toList() as Iterable<ChatStruct?>)
                    .withoutNulls
                    .toList()
                ..chatMessages = ((_model.messagesData?.jsonBody ?? '')
                        .toList()
                        .map<ChatMessageStruct?>(ChatMessageStruct.maybeFromMap)
                        .toList() as Iterable<ChatMessageStruct?>)
                    .withoutNulls
                    .toList(),
            );
          });
        },
      );
      _model.playersLoad = await PlayersGroup.playersCall.call();
      _model.chatsLoad = await ChatsGroup.getchatsCall.call(
        uid: currentUserUid,
      );
      _model.messagesLoad = await ChatsGroup.getmessagesCall.call(
        uid: currentUserUid,
      );
      _model.chatmemberLoad = await ChatsGroup.getchatmembersCall.call(
        pPlayerUid: currentUserUid,
      );
      setState(() {
        FFAppState().updateMAINDATAStruct(
          (e) => e
            ..players = ((_model.playersLoad?.jsonBody ?? '')
                    .toList()
                    .map<PlayerStruct?>(PlayerStruct.maybeFromMap)
                    .toList() as Iterable<PlayerStruct?>)
                .withoutNulls
                .toList()
            ..chats = ((_model.chatsLoad?.jsonBody ?? '')
                    .toList()
                    .map<ChatStruct?>(ChatStruct.maybeFromMap)
                    .toList() as Iterable<ChatStruct?>)
                .withoutNulls
                .toList()
            ..chatMessages = ((_model.messagesLoad?.jsonBody ?? '')
                    .toList()
                    .map<ChatMessageStruct?>(ChatMessageStruct.maybeFromMap)
                    .toList() as Iterable<ChatMessageStruct?>)
                .withoutNulls
                .toList()
            ..chatMembers = ((_model.chatmemberLoad?.jsonBody ?? '')
                    .toList()
                    .map<ChatMemberStruct?>(ChatMemberStruct.maybeFromMap)
                    .toList() as Iterable<ChatMemberStruct?>)
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
            'Главная',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Builder(
                builder: (context) {
                  final player = FFAppState().MAINDATA.players.toList();
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: player.length,
                    itemBuilder: (context, playerIndex) {
                      final playerItem = player[playerIndex];
                      return Text(
                        playerItem.nickname,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      );
                    },
                  );
                },
              ),
              Text(
                currentUserUid,
                style: FlutterFlowTheme.of(context).headlineSmall,
              ),
              Text(
                valueOrDefault<String>(
                  FFAppState()
                      .MAINDATA
                      .players
                      .where((e) => e.uid == currentUserUid)
                      .toList()
                      .first
                      .nickname,
                  'никнейм',
                ),
                style: FlutterFlowTheme.of(context).headlineSmall,
              ),
              FFButtonWidget(
                onPressed: () async {
                  GoRouter.of(context).prepareAuthEvent();
                  await authManager.signOut();
                  GoRouter.of(context).clearRedirectLocation();

                  context.goNamedAuth('LOGIN', context.mounted);
                },
                text: 'ВЫЙТИ',
                options: FFButtonOptions(
                  height: 30.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).bodySmall,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
