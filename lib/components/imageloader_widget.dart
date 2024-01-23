import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'imageloader_model.dart';
export 'imageloader_model.dart';

class ImageloaderWidget extends StatefulWidget {
  const ImageloaderWidget({
    super.key,
    String? imagePath,
  })  : imagePath = imagePath ??
            'Cg9CdXR0b25fMjV3bGZ5ajUYCSJuSl0KEgoGQnV0dG9uOgYI/////w9ABRkAAAAAAAAIQEkAAAAAAADwP1ICEAFaAggAcgsoAjEAAAAAAAAgQHoSCQAAAAAAADhAGQAAAAAAADhAwgELEgkJAAAAAAAARED6AwDyBQkJAAAAAAAA8D9iAMIBAA==';

  final String imagePath;

  @override
  _ImageloaderWidgetState createState() => _ImageloaderWidgetState();
}

class _ImageloaderWidgetState extends State<ImageloaderWidget> {
  late ImageloaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageloaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://picsum.photos/seed/699/600',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        FFButtonWidget(
          onPressed: () {
            print('Button pressed ...');
          },
          text: 'Загрузить',
          options: FFButtonOptions(
            height: 40.0,
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).primary,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Readex Pro',
                  color: Colors.white,
                ),
            elevation: 3.0,
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        FFButtonWidget(
          onPressed: () {
            print('Button pressed ...');
          },
          text: 'Удалить',
          options: FFButtonOptions(
            height: 40.0,
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).primary,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Readex Pro',
                  color: Colors.white,
                ),
            elevation: 3.0,
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ],
    );
  }
}
