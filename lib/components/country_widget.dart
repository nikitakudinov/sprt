import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'country_model.dart';
export 'country_model.dart';

class CountryWidget extends StatefulWidget {
  const CountryWidget({
    super.key,
    required this.countruId,
  });

  final int? countruId;

  @override
  State<CountryWidget> createState() => _CountryWidgetState();
}

class _CountryWidgetState extends State<CountryWidget> {
  late CountryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountryModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 20.0,
          height: 14.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              FFAppState()
                  .MAINDATA
                  .countries
                  .where((e) => e.id == widget.countruId)
                  .toList()
                  .first
                  .flagLinkH24,
              width: 20.0,
              height: 14.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          FFAppState()
              .MAINDATA
              .countries
              .where((e) => e.id == widget.countruId)
              .toList()
              .first
              .ruName,
          style: FlutterFlowTheme.of(context).bodyMedium,
        ),
      ].divide(const SizedBox(width: 5.0)),
    );
  }
}
