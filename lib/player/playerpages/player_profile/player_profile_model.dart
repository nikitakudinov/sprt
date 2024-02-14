import '/flutter_flow/flutter_flow_util.dart';
import '/player/playercomponents/b_l_o_c_kmemberoftournaments/b_l_o_c_kmemberoftournaments_widget.dart';
import '/player/playercomponents/b_l_o_c_kplayeractions/b_l_o_c_kplayeractions_widget.dart';
import '/player/playercomponents/b_l_o_c_kplayerawards/b_l_o_c_kplayerawards_widget.dart';
import '/player/playercomponents/b_l_o_c_kplayerevents/b_l_o_c_kplayerevents_widget.dart';
import '/player/playercomponents/b_l_o_c_kplayerheader/b_l_o_c_kplayerheader_widget.dart';
import 'player_profile_widget.dart' show PlayerProfileWidget;
import 'package:flutter/material.dart';

class PlayerProfileModel extends FlutterFlowModel<PlayerProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BLOCKplayerheader component.
  late BLOCKplayerheaderModel bLOCKplayerheaderModel;
  // Model for BLOCKplayeractions component.
  late BLOCKplayeractionsModel bLOCKplayeractionsModel;
  // Model for BLOCKmemberoftournaments component.
  late BLOCKmemberoftournamentsModel bLOCKmemberoftournamentsModel;
  // Model for BLOCKplayerawards component.
  late BLOCKplayerawardsModel bLOCKplayerawardsModel;
  // Model for BLOCKplayerevents.
  late BLOCKplayereventsModel bLOCKplayereventsModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    bLOCKplayerheaderModel =
        createModel(context, () => BLOCKplayerheaderModel());
    bLOCKplayeractionsModel =
        createModel(context, () => BLOCKplayeractionsModel());
    bLOCKmemberoftournamentsModel =
        createModel(context, () => BLOCKmemberoftournamentsModel());
    bLOCKplayerawardsModel =
        createModel(context, () => BLOCKplayerawardsModel());
    bLOCKplayereventsModel =
        createModel(context, () => BLOCKplayereventsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    bLOCKplayerheaderModel.dispose();
    bLOCKplayeractionsModel.dispose();
    bLOCKmemberoftournamentsModel.dispose();
    bLOCKplayerawardsModel.dispose();
    bLOCKplayereventsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
