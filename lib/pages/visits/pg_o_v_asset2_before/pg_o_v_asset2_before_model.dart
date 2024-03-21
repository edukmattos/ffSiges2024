import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import '/pages/visits/cp_o_v_asset_list_card/cp_o_v_asset_list_card_widget.dart';
import 'dart:async';
import 'pg_o_v_asset2_before_widget.dart' show PgOVAsset2BeforeWidget;
import 'package:flutter/material.dart';

class PgOVAsset2BeforeModel extends FlutterFlowModel<PgOVAsset2BeforeWidget> {
  ///  Local state fields for this page.

  String lpsvFileNameToDelete = '';

  bool lpsvIsThereFileName = false;

  String lpsvFilePath = '';

  bool lpsvIsRecorder = true;

  int? lpsvBeforeRecorder;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpOVAssetListCard component.
  late CpOVAssetListCardModel cpOVAssetListCardModel;
  Completer<List<VOrdersVisitsAssetsRow>>? requestCompleter;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Model for cpInputTexMultiline component.
  late CpInputTexMultilineModel cpInputTexMultilineModel;
  // Stores action output result for [Action Block - abGuardian] action in Button widget.
  bool? isAllowedDisapprove;
  // Stores action output result for [Action Block - abGuardian] action in Button widget.
  bool? isAllowedApprove;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOVAssetListCardModel =
        createModel(context, () => CpOVAssetListCardModel());
    cpInputTexMultilineModel =
        createModel(context, () => CpInputTexMultilineModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpOVAssetListCardModel.dispose();
    cpInputTexMultilineModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
