import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_o_v_processing/cp_o_v_processing_widget.dart';
import 'cp_o_v_asset_list_card_widget.dart' show CpOVAssetListCardWidget;
import 'package:flutter/material.dart';

class CpOVAssetListCardModel extends FlutterFlowModel<CpOVAssetListCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOVProcessing component.
  late CpOVProcessingModel cpOVProcessingModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOVProcessingModel = createModel(context, () => CpOVProcessingModel());
  }

  @override
  void dispose() {
    cpOVProcessingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
