import '/flutter_flow/flutter_flow_util.dart';
import 'countrypicker_widget.dart' show CountrypickerWidget;
import 'package:flutter/material.dart';

class CountrypickerModel extends FlutterFlowModel<CountrypickerWidget> {
  ///  Local state fields for this component.

  int? selectedCountryId = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
