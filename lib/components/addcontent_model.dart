import '/flutter_flow/flutter_flow_util.dart';
import 'addcontent_widget.dart' show AddcontentWidget;
import 'package:flutter/material.dart';

class AddcontentModel extends FlutterFlowModel<AddcontentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for player_nickname widget.
  FocusNode? playerNicknameFocusNode;
  TextEditingController? playerNicknameController;
  String? Function(BuildContext, String?)? playerNicknameControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    playerNicknameFocusNode?.dispose();
    playerNicknameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
