import '/backend/api_requests/api_calls.dart';
import '/components/countryview/countryview_widget.dart';
import '/components/image_loader/image_loader_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'appinfo_widget.dart' show AppinfoWidget;
import 'package:flutter/material.dart';

class AppinfoModel extends FlutterFlowModel<AppinfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getcountries)] action in APPINFO widget.
  ApiCallResponse? countries;
  // Stores action output result for [Backend Call - API (PLAYERS)] action in APPINFO widget.
  ApiCallResponse? players;
  // Stores action output result for [Backend Call - API (TEAMS)] action in APPINFO widget.
  ApiCallResponse? teams;
  // Stores action output result for [Backend Call - API (TOURNAMENTS)] action in APPINFO widget.
  ApiCallResponse? tournaments;
  // Stores action output result for [Backend Call - API (getchats)] action in APPINFO widget.
  ApiCallResponse? chats;
  // Stores action output result for [Backend Call - API (chatmessagesAAA)] action in APPINFO widget.
  ApiCallResponse? chatmessages;
  // Stores action output result for [Backend Call - API (authchatmembersAAA)] action in APPINFO widget.
  ApiCallResponse? chatmembers;
  // Model for image-loader component.
  late ImageLoaderModel imageLoaderModel;
  // Model for countryview component.
  late CountryviewModel countryviewModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    imageLoaderModel = createModel(context, () => ImageLoaderModel());
    countryviewModel = createModel(context, () => CountryviewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    imageLoaderModel.dispose();
    countryviewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
