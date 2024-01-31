import '/backend/api_requests/api_calls.dart';
import '/components/country_widget.dart';
import '/components/imageloader_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'appinfo_widget.dart' show AppinfoWidget;
import 'package:flutter/material.dart';

class AppinfoModel extends FlutterFlowModel<AppinfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
  // Model for IMAGELOADER component.
  late ImageloaderModel imageloaderModel;
  // Model for COUNTRY component.
  late CountryModel countryModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    imageloaderModel = createModel(context, () => ImageloaderModel());
    countryModel = createModel(context, () => CountryModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    imageloaderModel.dispose();
    countryModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
