import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'b_l_o_c_kplayeractions_model.dart';
export 'b_l_o_c_kplayeractions_model.dart';

class BLOCKplayeractionsWidget extends StatefulWidget {
  const BLOCKplayeractionsWidget({super.key});

  @override
  State<BLOCKplayeractionsWidget> createState() =>
      _BLOCKplayeractionsWidgetState();
}

class _BLOCKplayeractionsWidgetState extends State<BLOCKplayeractionsWidget> {
  late BLOCKplayeractionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BLOCKplayeractionsModel());
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
      height: 50.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'СООБЩЕНИЕ',
              icon: const Icon(
                Icons.message,
                size: 14.0,
              ),
              options: FFButtonOptions(
                height: 30.0,
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: const TextStyle(
                  fontSize: 10.0,
                ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
          ),
          Expanded(
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'В ДРУЗЬЯ',
              icon: const Icon(
                Icons.person_add,
                size: 14.0,
              ),
              options: FFButtonOptions(
                height: 30.0,
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: const TextStyle(
                  fontSize: 10.0,
                ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
          ),
          Expanded(
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'В КОМАНДУ',
              icon: const Icon(
                Icons.group_add,
                size: 14.0,
              ),
              options: FFButtonOptions(
                height: 30.0,
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: const TextStyle(
                  fontSize: 10.0,
                ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
          ),
        ]
            .divide(const SizedBox(width: 10.0))
            .addToStart(const SizedBox(width: 15.0))
            .addToEnd(const SizedBox(width: 15.0)),
      ),
    );
  }
}
