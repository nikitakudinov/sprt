import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/player/playercomponents/b_l_o_c_kmemberoftournaments/b_l_o_c_kmemberoftournaments_widget.dart';
import '/player/playercomponents/b_l_o_c_kplayeractions/b_l_o_c_kplayeractions_widget.dart';
import '/player/playercomponents/b_l_o_c_kplayerawards/b_l_o_c_kplayerawards_widget.dart';
import '/player/playercomponents/b_l_o_c_kplayerevents/b_l_o_c_kplayerevents_widget.dart';
import '/player/playercomponents/b_l_o_c_kplayerheader/b_l_o_c_kplayerheader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'player_profile_model.dart';
export 'player_profile_model.dart';

class PlayerProfileWidget extends StatefulWidget {
  const PlayerProfileWidget({super.key});

  @override
  State<PlayerProfileWidget> createState() => _PlayerProfileWidgetState();
}

class _PlayerProfileWidgetState extends State<PlayerProfileWidget> {
  late PlayerProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayerProfileModel());
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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.bLOCKplayerheaderModel,
                  updateCallback: () => setState(() {}),
                  child: const BLOCKplayerheaderWidget(),
                ),
                wrapWithModel(
                  model: _model.bLOCKplayeractionsModel,
                  updateCallback: () => setState(() {}),
                  child: const BLOCKplayeractionsWidget(),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: wrapWithModel(
                    model: _model.bLOCKmemberoftournamentsModel,
                    updateCallback: () => setState(() {}),
                    child: const BLOCKmemberoftournamentsWidget(),
                  ),
                ),
                wrapWithModel(
                  model: _model.bLOCKplayerawardsModel,
                  updateCallback: () => setState(() {}),
                  child: const BLOCKplayerawardsWidget(),
                ),
                wrapWithModel(
                  model: _model.bLOCKplayereventsModel,
                  updateCallback: () => setState(() {}),
                  child: const BLOCKplayereventsWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
