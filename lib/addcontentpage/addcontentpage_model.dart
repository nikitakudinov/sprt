import '/components/addcontent_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'addcontentpage_widget.dart' show AddcontentpageWidget;
import 'package:flutter/material.dart';

class AddcontentpageModel extends FlutterFlowModel<AddcontentpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ADDCONTENT component.
  late AddcontentModel addcontentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    addcontentModel = createModel(context, () => AddcontentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    addcontentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
