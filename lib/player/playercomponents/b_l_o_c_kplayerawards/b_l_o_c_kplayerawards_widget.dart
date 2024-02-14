import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'b_l_o_c_kplayerawards_model.dart';
export 'b_l_o_c_kplayerawards_model.dart';

class BLOCKplayerawardsWidget extends StatefulWidget {
  const BLOCKplayerawardsWidget({super.key});

  @override
  State<BLOCKplayerawardsWidget> createState() =>
      _BLOCKplayerawardsWidgetState();
}

class _BLOCKplayerawardsWidgetState extends State<BLOCKplayerawardsWidget> {
  late BLOCKplayerawardsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BLOCKplayerawardsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
      child: Material(
        color: Colors.transparent,
        elevation: 2.0,
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: 310.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 0.0, 15.0),
                    child: Text(
                      'Достижения',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleMedium,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.medal,
                          color: Color(0xFFDFA907),
                          size: 15.0,
                        ),
                        Text(
                          '2',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.medal,
                            color: Color(0xFF81868D),
                            size: 15.0,
                          ),
                        ),
                        Text(
                          '3',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.medal,
                            color: Color(0xFFD05900),
                            size: 15.0,
                          ),
                        ),
                        Text(
                          '10',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ].divide(const SizedBox(width: 3.0)),
                    ),
                  ),
                ],
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFDFA907),
                                shape: BoxShape.circle,
                              ),
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                '1',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Roboto',
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'FFTS',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                      ),
                                      Text(
                                        'Fucked fuck to shit',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                      Text(
                                        '15.01.2024',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ].divide(const SizedBox(width: 10.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'в составе команды',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      Text(
                                        'Super Deaths squad',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: const Color(0xFF66757E),
                                            ),
                                      ),
                                    ].divide(const SizedBox(width: 10.0)),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(width: 5.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 1.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Container(
                        width: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFF81868D),
                                shape: BoxShape.circle,
                              ),
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                '2',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Roboto',
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'rXXc',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                      ),
                                      Text(
                                        'Rocker arena',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                      Text(
                                        '15.01.2024',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ].divide(const SizedBox(width: 10.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'в составе команды',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      Text(
                                        'Axias',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: const Color(0xFF66757E),
                                            ),
                                      ),
                                    ].divide(const SizedBox(width: 10.0)),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(width: 5.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 1.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Container(
                        width: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFD05900),
                                shape: BoxShape.circle,
                              ),
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                '3',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Roboto',
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'WC2024',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                      ),
                                      Text(
                                        'Wold cup 2024',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                      Text(
                                        '25.03.2024',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ].divide(const SizedBox(width: 10.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'в составе команды',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      Text(
                                        'Axias',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: const Color(0xFF66757E),
                                            ),
                                      ),
                                    ].divide(const SizedBox(width: 10.0)),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(width: 5.0)),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 10.0)),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 25.0, 10.0),
                    child: Text(
                      'ПОКАЗАТЬ ВСЕ',
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
