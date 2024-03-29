import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/players_list/players_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'chats_model.dart';
export 'chats_model.dart';

class ChatsWidget extends StatefulWidget {
  const ChatsWidget({super.key});

  @override
  State<ChatsWidget> createState() => _ChatsWidgetState();
}

class _ChatsWidgetState extends State<ChatsWidget> {
  late ChatsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatsModel());

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
          setState(() => _model.apiRequestCompleter = null);
          await _model.waitForApiRequestCompleted();
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
            'Чаты',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.person_search,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: FlutterFlowTheme.of(context).primary,
                  barrierColor: FlutterFlowTheme.of(context).tertiary,
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return GestureDetector(
                      onTap: () => _model.unfocusNode.canRequestFocus
                          ? FocusScope.of(context)
                              .requestFocus(_model.unfocusNode)
                          : FocusScope.of(context).unfocus(),
                      child: Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          child: PlayersListWidget(
                            data: FFAppState().MAINDATA.players,
                            type: PlayerListType.friendsList,
                          ),
                        ),
                      ),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final chats = FFAppState()
                        .MAINDATA
                        .chats
                        .sortedList((e) => e.updatedAt)
                        .toList();
                    return ListView.separated(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        20.0,
                        0,
                        0,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: chats.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 5.0),
                      itemBuilder: (context, chatsIndex) {
                        final chatsItem = chats[chatsIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'CHAT',
                              queryParameters: {
                                'chat': serializeParam(
                                  chatsItem.id,
                                  ParamType.int,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25.0),
                                      child: CachedNetworkImage(
                                        fadeInDuration:
                                            const Duration(milliseconds: 500),
                                        fadeOutDuration:
                                            const Duration(milliseconds: 500),
                                        imageUrl: FFAppState()
                                            .MAINDATA
                                            .players
                                            .where((e) =>
                                                e.uid ==
                                                FFAppState()
                                                    .MAINDATA
                                                    .chatMembers
                                                    .where((e) =>
                                                        (e.chatId ==
                                                            chatsItem.id) &&
                                                        (e.playerUid !=
                                                            currentUserUid))
                                                    .toList()
                                                    .first
                                                    .playerUid)
                                            .toList()
                                            .first
                                            .avatar,
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFAppState()
                                              .MAINDATA
                                              .players
                                              .where((e) =>
                                                  e.uid ==
                                                  FFAppState()
                                                      .MAINDATA
                                                      .chatMembers
                                                      .where((e) =>
                                                          (e.chatId ==
                                                              chatsItem.id) &&
                                                          (e.playerUid !=
                                                              currentUserUid))
                                                      .toList()
                                                      .first
                                                      .playerUid)
                                              .toList()
                                              .first
                                              .nickname,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              chatsItem.lastmessageSander ==
                                                      currentUserUid
                                                  ? 'Вы:'
                                                  : FFAppState()
                                                      .MAINDATA
                                                      .players
                                                      .where((e) =>
                                                          e.uid ==
                                                          chatsItem
                                                              .lastmessageSander)
                                                      .toList()
                                                      .first
                                                      .nickname,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                            ),
                                            Text(
                                              chatsItem.lastMessage,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent3,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 25.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: FutureBuilder<ApiCallResponse>(
                                          future: (_model
                                                      .apiRequestCompleter ??=
                                                  Completer<ApiCallResponse>()
                                                    ..complete(ChatsGroup
                                                        .getcountchatureadedmessagesCall
                                                        .call(
                                                      pChatId: chatsItem.id,
                                                      pPlayerUid:
                                                          currentUserUid,
                                                    )))
                                              .future,
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final textGetcountchatureadedmessagesResponse =
                                                snapshot.data!;
                                            return Text(
                                              ChatsGroup
                                                  .getcountchatureadedmessagesCall
                                                  .count(
                                                    textGetcountchatureadedmessagesResponse
                                                        .jsonBody,
                                                  )!
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ].divide(const SizedBox(width: 10.0)),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
