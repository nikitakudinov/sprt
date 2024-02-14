import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'b_l_o_c_kteammembers_model.dart';
export 'b_l_o_c_kteammembers_model.dart';

class BLOCKteammembersWidget extends StatefulWidget {
  const BLOCKteammembersWidget({super.key});

  @override
  State<BLOCKteammembersWidget> createState() => _BLOCKteammembersWidgetState();
}

class _BLOCKteammembersWidgetState extends State<BLOCKteammembersWidget> {
  late BLOCKteammembersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BLOCKteammembersModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 2.0,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 0.0, 15.0),
              child: Text(
                'Состав команды',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).titleMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        _model.selectedACTIVE = true;
                        _model.selectedCOMPLITED = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: _model.selectedACTIVE == true
                            ? FlutterFlowTheme.of(context).tertiary
                            : const Color(0x00000000),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 5.0, 10.0, 5.0),
                        child: Text(
                          'ВСЕ',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        _model.selectedACTIVE = false;
                        _model.selectedCOMPLITED = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: _model.selectedCOMPLITED == true
                            ? FlutterFlowTheme.of(context).tertiary
                            : const Color(0x00000000),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 5.0, 10.0, 5.0),
                        child: Text(
                          'ОСНОВНОЙ СОСТАВ',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        _model.selectedACTIVE = false;
                        _model.selectedCOMPLITED = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: _model.selectedCOMPLITED == true
                            ? FlutterFlowTheme.of(context).tertiary
                            : const Color(0x00000000),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 5.0, 10.0, 5.0),
                        child: Text(
                          'ЛИДЕРЫ',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 10.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: ListView(
                padding: const EdgeInsets.fromLTRB(
                  0,
                  10.0,
                  0,
                  10.0,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    child: Container(
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://picsum.photos/seed/226/600',
                                width: 50.0,
                                height: 50.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'FFTS',
                                  style:
                                      FlutterFlowTheme.of(context).titleSmall,
                                ),
                                Text(
                                  'Fucked fuck to shit',
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 20.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.message,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(width: 5.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 5.0,
                    borderWidth: 1.0,
                    buttonSize: 30.0,
                    fillColor: FlutterFlowTheme.of(context).secondary,
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 14.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                  Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: const BoxDecoration(),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        '1',
                        style: FlutterFlowTheme.of(context).titleSmall,
                      ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 5.0,
                    borderWidth: 1.0,
                    buttonSize: 30.0,
                    fillColor: FlutterFlowTheme.of(context).secondary,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 14.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ].divide(const SizedBox(width: 5.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
