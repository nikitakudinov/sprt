import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getchats)] action in HOME widget.
  ApiCallResponse? chatsData;
  // Stores action output result for [Backend Call - API (getmessages)] action in HOME widget.
  ApiCallResponse? messagesData;
  // Stores action output result for [Backend Call - API (PLAYERS)] action in HOME widget.
  ApiCallResponse? playersData;

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
