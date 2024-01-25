import '/components/addcontent_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'addcontentpage_model.dart';
export 'addcontentpage_model.dart';

class AddcontentpageWidget extends StatefulWidget {
  const AddcontentpageWidget({
    super.key,
    required this.contentType,
  });

  final String? contentType;

  @override
  State<AddcontentpageWidget> createState() => _AddcontentpageWidgetState();
}

class _AddcontentpageWidgetState extends State<AddcontentpageWidget> {
  late AddcontentpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddcontentpageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.addcontentModel,
            updateCallback: () => setState(() {}),
            child: AddcontentWidget(
              imageSize: 100,
              contentType: widget.contentType!,
            ),
          ),
        ),
      ),
    );
  }
}
