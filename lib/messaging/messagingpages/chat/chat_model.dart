import '/flutter_flow/flutter_flow_util.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for messagetext widget.
  FocusNode? messagetextFocusNode;
  TextEditingController? messagetextController;
  String? Function(BuildContext, String?)? messagetextControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    messagetextFocusNode?.dispose();
    messagetextController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
