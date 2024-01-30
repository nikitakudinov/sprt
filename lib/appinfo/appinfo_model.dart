import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'appinfo_widget.dart' show AppinfoWidget;
import 'package:flutter/material.dart';

class AppinfoModel extends FlutterFlowModel<AppinfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer1?.cancel();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
