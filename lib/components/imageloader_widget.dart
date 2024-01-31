import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'imageloader_model.dart';
export 'imageloader_model.dart';

class ImageloaderWidget extends StatefulWidget {
  const ImageloaderWidget({
    super.key,
    int? imageSize,
    String? imagePath,
  })  : imageSize = imageSize ?? 50,
        imagePath = imagePath ??
            'https://supabase.proplayclub.ru/storage/v1/object/public/images/image-placeholder.jpg';

  final int imageSize;
  final String imagePath;

  @override
  State<ImageloaderWidget> createState() => _ImageloaderWidgetState();
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

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.image = widget.imagePath;
      });
    });
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
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: valueOrDefault<double>(
            widget.imageSize.toDouble(),
            50.0,
          ),
          height: valueOrDefault<double>(
            widget.imageSize.toDouble(),
            50.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.network(
              _model.image!,
              width: valueOrDefault<double>(
                widget.imageSize.toDouble(),
                50.0,
              ),
              height: valueOrDefault<double>(
                widget.imageSize.toDouble(),
                50.0,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (_model.image ==
            'https://supabase.proplayclub.ru/storage/v1/object/public/images/image-placeholder.jpg')
          FFButtonWidget(
            onPressed: () async {
              final selectedMedia = await selectMedia(
                storageFolderPath: 'images',
                imageQuality: 100,
                mediaSource: MediaSource.photoGallery,
                multiImage: false,
              );
              if (selectedMedia != null &&
                  selectedMedia.every(
                      (m) => validateFileFormat(m.storagePath, context))) {
                setState(() => _model.isDataUploading = true);
                var selectedUploadedFiles = <FFUploadedFile>[];

                var downloadUrls = <String>[];
                try {
                  selectedUploadedFiles = selectedMedia
                      .map((m) => FFUploadedFile(
                            name: m.storagePath.split('/').last,
                            bytes: m.bytes,
                            height: m.dimensions?.height,
                            width: m.dimensions?.width,
                            blurHash: m.blurHash,
                          ))
                      .toList();

                  downloadUrls = await uploadSupabaseStorageFiles(
                    bucketName: 'images',
                    selectedFiles: selectedMedia,
                  );
                } finally {
                  _model.isDataUploading = false;
                }
                if (selectedUploadedFiles.length == selectedMedia.length &&
                    downloadUrls.length == selectedMedia.length) {
                  setState(() {
                    _model.uploadedLocalFile = selectedUploadedFiles.first;
                    _model.uploadedFileUrl = downloadUrls.first;
                  });
                } else {
                  setState(() {});
                  return;
                }
              }

              setState(() {
                _model.image = _model.uploadedFileUrl;
              });
            },
            text: 'Загрузить',
            options: FFButtonOptions(
              width: widget.imageSize.toDouble(),
              height: 30.0,
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).bodySmall,
              elevation: 0.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        if (_model.image !=
            'https://supabase.proplayclub.ru/storage/v1/object/public/images/image-placeholder.jpg')
          FFButtonWidget(
            onPressed: () async {
              await deleteSupabaseFileFromPublicUrl(_model.image!);
              setState(() {
                _model.image =
                    'https://supabase.proplayclub.ru/storage/v1/object/public/images/image-placeholder.jpg';
              });
            },
            text: 'Удалить',
            options: FFButtonOptions(
              width: widget.imageSize.toDouble(),
              height: 30.0,
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).bodySmall,
              elevation: 0.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
      ].divide(const SizedBox(height: 5.0)),
    );
  }
}
