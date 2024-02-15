import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getchats)] action in CHAT widget.
  ApiCallResponse? chatsDataC;
  // Stores action output result for [Backend Call - API (getmessages)] action in CHAT widget.
  ApiCallResponse? messagesDataC;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for messagetext widget.
  FocusNode? messagetextFocusNode;
  TextEditingController? messagetextController;
  String? Function(BuildContext, String?)? messagetextControllerValidator;
  // Stores action output result for [Backend Call - API (postmessage)] action in IconButton widget.
  ApiCallResponse? sandMessage;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController?.dispose();
    listViewController?.dispose();
    messagetextFocusNode?.dispose();
    messagetextController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
