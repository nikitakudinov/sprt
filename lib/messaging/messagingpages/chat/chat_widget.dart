import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/messaging/messagingcomponents/message/message_widget.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:provider/provider.dart';
import 'chat_model.dart';
export 'chat_model.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({
    super.key,
    required this.chat,
  });

  final int? chat;

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  late ChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await _model.listViewController?.animateTo(
        _model.listViewController!.position.maxScrollExtent,
        duration: const Duration(milliseconds: 100),
        curve: Curves.ease,
      );
      await actions.supaRealtime(
        currentUserUid,
        'chats',
        () async {
          _model.chatsDataC = await ChatsGroup.getchatsCall.call(
            uid: currentUserUid,
          );
          _model.messagesDataC = await ChatsGroup.getmessagesCall.call(
            uid: currentUserUid,
          );
          FFAppState().update(() {
            FFAppState().updateMAINDATAStruct(
              (e) => e
                ..chats = ((_model.chatsDataC?.jsonBody ?? '')
                        .toList()
                        .map<ChatStruct?>(ChatStruct.maybeFromMap)
                        .toList() as Iterable<ChatStruct?>)
                    .withoutNulls
                    .toList()
                ..chatMessages = ((_model.messagesDataC?.jsonBody ?? '')
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

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        setState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.messagetextController ??= TextEditingController();
    _model.messagetextFocusNode ??= FocusNode();
    _model.messagetextFocusNode!.addListener(
      () async {
        await _model.listViewController?.animateTo(
          _model.listViewController!.position.maxScrollExtent,
          duration: const Duration(milliseconds: 100),
          curve: Curves.ease,
        );
      },
    );
  }

  @override
  void dispose() {
    _model.dispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
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
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 45.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    width: 45.0,
                    height: 45.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/wallpaperflare.com_wallpaper.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FutureBuilder<List<ChatMembersRow>>(
                      future: ChatMembersTable().queryRows(
                        queryFn: (q) => q
                            .eq(
                              'chat_id',
                              widget.chat,
                            )
                            .neq(
                              'player_uid',
                              currentUserUid,
                            ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<ChatMembersRow> textChatMembersRowList =
                            snapshot.data!;
                        return Text(
                          FFAppState()
                              .MAINDATA
                              .players
                              .where((e) =>
                                  e.uid ==
                                  textChatMembersRowList.first.playerUid)
                              .toList()
                              .first
                              .nickname,
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        );
                      },
                    ),
                    Text(
                      'ONLINE',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Roboto',
                            color: FlutterFlowTheme.of(context).success,
                            fontSize: 10.0,
                          ),
                    ),
                  ],
                ),
              ].divide(const SizedBox(width: 10.0)),
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
              Expanded(
                child: Container(
                  height: 100.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0.0,
                        0.0,
                        0.0,
                        valueOrDefault<double>(
                          (isWeb
                                  ? MediaQuery.viewInsetsOf(context).bottom > 0
                                  : _isKeyboardVisible)
                              ? 150.0
                              : 0.0,
                          0.0,
                        )),
                    child: Builder(
                      builder: (context) {
                        final messages = FFAppState()
                            .MAINDATA
                            .chatMessages
                            .where((e) => e.chatId == widget.chat)
                            .toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: messages.length,
                          itemBuilder: (context, messagesIndex) {
                            final messagesItem = messages[messagesIndex];
                            return MessageWidget(
                              key: Key(
                                  'Key9lx_${messagesIndex}_of_${messages.length}'),
                              sander: messagesItem.sander,
                              text: messagesItem.body,
                              time: messagesItem.createdAt,
                            );
                          },
                          controller: _model.listViewController,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: TextFormField(
                          controller: _model.messagetextController,
                          focusNode: _model.messagetextFocusNode,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          validator: _model.messagetextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.send,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          _model.sandMessage =
                              await ChatsGroup.postmessageCall.call(
                            pChatId: widget.chat,
                            pSanderUid: currentUserUid,
                            pMessage: _model.messagetextController.text,
                          );
                          setState(() {
                            _model.messagetextController?.clear();
                          });
                          await _model.listViewController?.animateTo(
                            _model.listViewController!.position.maxScrollExtent,
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.ease,
                          );

                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
