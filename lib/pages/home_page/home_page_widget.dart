import '/backend/api_requests/api_calls.dart';
import '/components/list_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 1000),
        callback: (timer) async {
          _model.apiResultplz = await PlayersGroup.lastUpdatedPlayerCall.call();
          if (FFAppState().LASTUPDATEDPLAYERTIME ==
              PlayersGroup.lastUpdatedPlayerCall.updatedat(
                (_model.apiResultplz?.jsonBody ?? ''),
              )) {
            setState(() {
              FFAppState().LASTUPDATEDPLAYERTIME =
                  PlayersGroup.lastUpdatedPlayerCall.updatedat(
                (_model.apiResultplz?.jsonBody ?? ''),
              )!;
            });
          } else {
            setState(() {
              FFAppState().LASTUPDATEDPLAYERTIME =
                  PlayersGroup.lastUpdatedPlayerCall.updatedat(
                (_model.apiResultplz?.jsonBody ?? ''),
              )!;
            });
          }
        },
        startImmediately: true,
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
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final players = FFAppState().MAINDATA.players.toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: players.length,
                      itemBuilder: (context, playersIndex) {
                        final playersItem = players[playersIndex];
                        return ListItemWidget(
                          key: Key(
                              'Keybi5_${playersIndex}_of_${players.length}'),
                          contentType: 'player',
                          imageSize: 50,
                          title: playersItem.playerNickname,
                          titleSize: 18,
                          titleColor: FlutterFlowTheme.of(context).primaryText,
                          subTitle: playersItem.playerTag,
                          subTitleSize: 14,
                          subTitleColor:
                              FlutterFlowTheme.of(context).primaryText,
                          titleVISIBILITY: true,
                          subTitleVISIBILITY: true,
                          imageVISIBILITY: true,
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryText,
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
