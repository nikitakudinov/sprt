import '/components/b_l_o_c_kmemberoftournaments_widget.dart';
import '/components/countryview/countryview_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());
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
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Text(
            'Профиль игрока',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 160.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 65.0,
                      height: 65.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondary,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.network(
                          'https://picsum.photos/seed/682/600',
                          width: 65.0,
                          height: 65.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello World',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                        ),
                        Text(
                          'Hello World',
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                        wrapWithModel(
                          model: _model.countryviewModel,
                          updateCallback: () => setState(() {}),
                          child: const CountryviewWidget(
                            countruId: 1,
                          ),
                        ),
                      ],
                    ),
                  ]
                      .divide(const SizedBox(width: 10.0))
                      .addToStart(const SizedBox(width: 15.0))
                      .addToEnd(const SizedBox(width: 15.0)),
                ),
              ),
              wrapWithModel(
                model: _model.bLOCKmemberoftournamentsModel,
                updateCallback: () => setState(() {}),
                child: const BLOCKmemberoftournamentsWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
