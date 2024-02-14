import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/team/teamcomponents/b_l_o_c_kteamactions/b_l_o_c_kteamactions_widget.dart';
import '/team/teamcomponents/b_l_o_c_kteamawards/b_l_o_c_kteamawards_widget.dart';
import '/team/teamcomponents/b_l_o_c_kteamheader/b_l_o_c_kteamheader_widget.dart';
import '/team/teamcomponents/b_l_o_c_kteammatches/b_l_o_c_kteammatches_widget.dart';
import '/team/teamcomponents/b_l_o_c_kteammemberoftournaments/b_l_o_c_kteammemberoftournaments_widget.dart';
import '/team/teamcomponents/b_l_o_c_kteammembers/b_l_o_c_kteammembers_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'team_profile_model.dart';
export 'team_profile_model.dart';

class TeamProfileWidget extends StatefulWidget {
  const TeamProfileWidget({super.key});

  @override
  State<TeamProfileWidget> createState() => _TeamProfileWidgetState();
}

class _TeamProfileWidgetState extends State<TeamProfileWidget> {
  late TeamProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeamProfileModel());
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
                  model: _model.bLOCKteamheaderModel,
                  updateCallback: () => setState(() {}),
                  child: const BLOCKteamheaderWidget(),
                ),
                wrapWithModel(
                  model: _model.bLOCKteamactionsModel,
                  updateCallback: () => setState(() {}),
                  child: const BLOCKteamactionsWidget(),
                ),
                wrapWithModel(
                  model: _model.bLOCKteammembersModel,
                  updateCallback: () => setState(() {}),
                  child: const BLOCKteammembersWidget(),
                ),
                wrapWithModel(
                  model: _model.bLOCKteammemberoftournamentsModel,
                  updateCallback: () => setState(() {}),
                  child: const BLOCKteammemberoftournamentsWidget(),
                ),
                wrapWithModel(
                  model: _model.bLOCKteamawardsModel,
                  updateCallback: () => setState(() {}),
                  child: const BLOCKteamawardsWidget(),
                ),
                wrapWithModel(
                  model: _model.bLOCKteammatchesModel,
                  updateCallback: () => setState(() {}),
                  child: const BLOCKteammatchesWidget(),
                ),
              ].divide(const SizedBox(height: 3.0)),
            ),
          ),
        ),
      ),
    );
  }
}
