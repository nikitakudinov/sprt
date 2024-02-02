import '/flutter_flow/flutter_flow_util.dart';
import 'image_loader_widget.dart' show ImageLoaderWidget;
import 'package:flutter/material.dart';

class ImageLoaderModel extends FlutterFlowModel<ImageLoaderWidget> {
  ///  Local state fields for this component.

  String? image =
      'https://supabase.proplayclub.ru/storage/v1/object/public/images/image-placeholder.jpg';

  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
