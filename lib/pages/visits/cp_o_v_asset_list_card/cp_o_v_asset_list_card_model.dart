import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visits/cp_o_v_processing_card/cp_o_v_processing_card_widget.dart';
import 'cp_o_v_asset_list_card_widget.dart' show CpOVAssetListCardWidget;
import 'package:flutter/material.dart';

class CpOVAssetListCardModel extends FlutterFlowModel<CpOVAssetListCardWidget> {
  ///  Local state fields for this component.

  int assetId = 1;

  ///  State fields for stateful widgets in this component.

  // Model for cpOVProcessingCard component.
  late CpOVProcessingCardModel cpOVProcessingCardModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOVProcessingCardModel =
        createModel(context, () => CpOVProcessingCardModel());
  }

  @override
  void dispose() {
    cpOVProcessingCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
