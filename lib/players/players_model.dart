import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'players_widget.dart' show PlayersWidget;
import 'package:flutter/material.dart';

class PlayersModel extends FlutterFlowModel<PlayersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (PLAYERS)] action in PLAYERS widget.
  ApiCallResponse? playersdata;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
