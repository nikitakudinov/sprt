import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'b_l_o_c_kmemberoftournaments_model.dart';
export 'b_l_o_c_kmemberoftournaments_model.dart';

class BLOCKmemberoftournamentsWidget extends StatefulWidget {
  const BLOCKmemberoftournamentsWidget({super.key});

  @override
  State<BLOCKmemberoftournamentsWidget> createState() =>
      _BLOCKmemberoftournamentsWidgetState();
}

class _BLOCKmemberoftournamentsWidgetState
    extends State<BLOCKmemberoftournamentsWidget> {
  late BLOCKmemberoftournamentsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BLOCKmemberoftournamentsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
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
              'Участник турниров',
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                      child: Text(
                        'АКТИВНЫЕ',
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                      child: Text(
                        'ЗАВЕРШЕННЫЕ',
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
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
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
                                style: FlutterFlowTheme.of(context).titleSmall,
                              ),
                              Text(
                                'Fucked fuck to shit',
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'c 20.02.24 по 23.02.24',
                              style: FlutterFlowTheme.of(context).bodySmall,
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
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 15.0, 10.0),
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
    );
  }
}
