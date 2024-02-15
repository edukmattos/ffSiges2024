import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pg_my_profile_widget.dart' show PgMyProfileWidget;
import 'package:flutter/material.dart';

class PgMyProfileModel extends FlutterFlowModel<PgMyProfileWidget> {
  ///  Local state fields for this page.

  String lpsvFilePath = '';

  String lpsvFileName = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (faceDetection)] action in Image widget.
  ApiCallResponse? resUserFaceDetected;
  // Stores action output result for [Backend Call - API (deleteFile)] action in Image widget.
  ApiCallResponse? apiResult1;
  // Stores action output result for [Backend Call - API (deleteFile)] action in Image widget.
  ApiCallResponse? apiResult2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
