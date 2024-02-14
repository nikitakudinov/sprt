import '/flutter_flow/flutter_flow_util.dart';
import '/team/teamcomponents/b_l_o_c_kteamactions/b_l_o_c_kteamactions_widget.dart';
import '/team/teamcomponents/b_l_o_c_kteamawards/b_l_o_c_kteamawards_widget.dart';
import '/team/teamcomponents/b_l_o_c_kteamheader/b_l_o_c_kteamheader_widget.dart';
import '/team/teamcomponents/b_l_o_c_kteammatches/b_l_o_c_kteammatches_widget.dart';
import '/team/teamcomponents/b_l_o_c_kteammemberoftournaments/b_l_o_c_kteammemberoftournaments_widget.dart';
import '/team/teamcomponents/b_l_o_c_kteammembers/b_l_o_c_kteammembers_widget.dart';
import 'team_profile_widget.dart' show TeamProfileWidget;
import 'package:flutter/material.dart';

class TeamProfileModel extends FlutterFlowModel<TeamProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BLOCKteamheader component.
  late BLOCKteamheaderModel bLOCKteamheaderModel;
  // Model for BLOCKteamactions component.
  late BLOCKteamactionsModel bLOCKteamactionsModel;
  // Model for BLOCKteammembers component.
  late BLOCKteammembersModel bLOCKteammembersModel;
  // Model for BLOCKteammemberoftournaments component.
  late BLOCKteammemberoftournamentsModel bLOCKteammemberoftournamentsModel;
  // Model for BLOCKteamawards component.
  late BLOCKteamawardsModel bLOCKteamawardsModel;
  // Model for BLOCKteammatches component.
  late BLOCKteammatchesModel bLOCKteammatchesModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    bLOCKteamheaderModel = createModel(context, () => BLOCKteamheaderModel());
    bLOCKteamactionsModel = createModel(context, () => BLOCKteamactionsModel());
    bLOCKteammembersModel = createModel(context, () => BLOCKteammembersModel());
    bLOCKteammemberoftournamentsModel =
        createModel(context, () => BLOCKteammemberoftournamentsModel());
    bLOCKteamawardsModel = createModel(context, () => BLOCKteamawardsModel());
    bLOCKteammatchesModel = createModel(context, () => BLOCKteammatchesModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    bLOCKteamheaderModel.dispose();
    bLOCKteamactionsModel.dispose();
    bLOCKteammembersModel.dispose();
    bLOCKteammemberoftournamentsModel.dispose();
    bLOCKteamawardsModel.dispose();
    bLOCKteammatchesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
