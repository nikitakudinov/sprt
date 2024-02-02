import '/components/b_l_o_c_kmemberoftournaments_widget.dart';
import '/components/countryview/countryview_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for countryview component.
  late CountryviewModel countryviewModel;
  // Model for BLOCKmemberoftournaments component.
  late BLOCKmemberoftournamentsModel bLOCKmemberoftournamentsModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    countryviewModel = createModel(context, () => CountryviewModel());
    bLOCKmemberoftournamentsModel =
        createModel(context, () => BLOCKmemberoftournamentsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    countryviewModel.dispose();
    bLOCKmemberoftournamentsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
