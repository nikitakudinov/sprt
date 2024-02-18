import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'players_list_model.dart';
export 'players_list_model.dart';

class PlayersListWidget extends StatefulWidget {
  const PlayersListWidget({
    super.key,
    required this.data,
    required this.type,
  });

  final List<PlayerStruct>? data;
  final PlayerListType? type;

  @override
  State<PlayersListWidget> createState() => _PlayersListWidgetState();
}

class _PlayersListWidgetState extends State<PlayersListWidget> {
  late PlayersListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayersListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primary,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Builder(
            builder: (context) {
              final players =
                  widget.data!.where((e) => e.uid != currentUserUid).toList();
              return ListView.separated(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: players.length,
                separatorBuilder: (_, __) => const SizedBox(height: 5.0),
                itemBuilder: (context, playersIndex) {
                  final playersItem = players[playersIndex];
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (widget.type == PlayerListType.friendsList) {
                        if (FFAppState()
                                .MAINDATA
                                .chatMembers
                                .where((e) => e.playerUid == playersItem.uid)
                                .toList().isNotEmpty) {
                          context.pushNamed(
                            'CHAT',
                            queryParameters: {
                              'chat': serializeParam(
                                FFAppState()
                                    .MAINDATA
                                    .chatMembers
                                    .where(
                                        (e) => e.playerUid == playersItem.uid)
                                    .toList()
                                    .first
                                    .chatId,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        } else {
                          _model.creatChat =
                              await ChatsGroup.creatdialoguechatCall.call(
                            player1: currentUserUid,
                            player2: playersItem.uid,
                          );
                          _model.chatsLoad = await ChatsGroup.getchatsCall.call(
                            uid: currentUserUid,
                          );
                          _model.chatsMembersLoad =
                              await ChatsGroup.getchatmembersCall.call(
                            pPlayerUid: currentUserUid,
                          );
                          setState(() {
                            FFAppState().updateMAINDATAStruct(
                              (e) => e
                                ..chats = ((_model.chatsLoad?.jsonBody ?? '')
                                        .toList()
                                        .map<ChatStruct?>(
                                            ChatStruct.maybeFromMap)
                                        .toList() as Iterable<ChatStruct?>)
                                    .withoutNulls
                                    .toList()
                                ..chatMembers = ((_model
                                                .chatsMembersLoad?.jsonBody ??
                                            '')
                                        .toList()
                                        .map<ChatMemberStruct?>(
                                            ChatMemberStruct.maybeFromMap)
                                        .toList() as Iterable<ChatMemberStruct?>)
                                    .withoutNulls
                                    .toList(),
                            );
                          });

                          context.pushNamed(
                            'CHAT',
                            queryParameters: {
                              'chat': serializeParam(
                                (_model.creatChat?.jsonBody ?? ''),
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        }

                        Navigator.pop(context);
                      }

                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/russia-flag-wallpaper-celebration-day_982005-4333.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      playersItem.nickname,
                                      'Nickname',
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                  Text(
                                    playersItem.uid,
                                    style:
                                        FlutterFlowTheme.of(context).labelSmall,
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.chat_bubble_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
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
      ),
    );
  }
}
