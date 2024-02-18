import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'players_list_widget.dart' show PlayersListWidget;
import 'package:flutter/material.dart';

class PlayersListModel extends FlutterFlowModel<PlayersListWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (creatdialoguechat)] action in Container widget.
  ApiCallResponse? creatChat;
  // Stores action output result for [Backend Call - API (getchats)] action in Container widget.
  ApiCallResponse? chatsLoad;
  // Stores action output result for [Backend Call - API (getchatmembers)] action in Container widget.
  ApiCallResponse? chatsMembersLoad;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
