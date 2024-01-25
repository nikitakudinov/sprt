import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'list_item_model.dart';
export 'list_item_model.dart';

class ListItemWidget extends StatefulWidget {
  const ListItemWidget({
    super.key,
    required this.contentType,
    required this.imageSize,
    required this.title,
    required this.titleSize,
    required this.titleColor,
    required this.subTitle,
    required this.subTitleSize,
    required this.subTitleColor,
    bool? titleVISIBILITY,
    bool? subTitleVISIBILITY,
    bool? imageVISIBILITY,
    required this.backgroundColor,
  })  : titleVISIBILITY = titleVISIBILITY ?? true,
        subTitleVISIBILITY = subTitleVISIBILITY ?? true,
        imageVISIBILITY = imageVISIBILITY ?? true;

  final String? contentType;
  final int? imageSize;
  final String? title;
  final int? titleSize;
  final Color? titleColor;
  final String? subTitle;
  final int? subTitleSize;
  final Color? subTitleColor;
  final bool titleVISIBILITY;
  final bool subTitleVISIBILITY;
  final bool imageVISIBILITY;
  final Color? backgroundColor;

  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  late ListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListItemModel());
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
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: widget.imageSize?.toDouble(),
            height: widget.imageSize?.toDouble(),
            decoration: const BoxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://picsum.photos/seed/624/600',
                width: widget.imageSize?.toDouble(),
                height: widget.imageSize?.toDouble(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.title,
                  'title',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: widget.titleColor,
                      fontSize: widget.titleSize?.toDouble(),
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.subTitle,
                  'subTitle',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: widget.subTitleColor,
                      fontSize: widget.subTitleSize?.toDouble(),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
