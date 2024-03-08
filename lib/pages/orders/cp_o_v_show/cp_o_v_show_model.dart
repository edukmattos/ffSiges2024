import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visits/cp_o_v_processing_card/cp_o_v_processing_card_widget.dart';
import 'cp_o_v_show_widget.dart' show CpOVShowWidget;
import 'package:flutter/material.dart';

class CpOVShowModel extends FlutterFlowModel<CpOVShowWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOVProcessingCard component.
  late CpOVProcessingCardModel cpOVProcessingCardModel1;
  // Model for cpOVProcessingCard component.
  late CpOVProcessingCardModel cpOVProcessingCardModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOVProcessingCardModel1 =
        createModel(context, () => CpOVProcessingCardModel());
    cpOVProcessingCardModel2 =
        createModel(context, () => CpOVProcessingCardModel());
  }

  @override
  void dispose() {
    cpOVProcessingCardModel1.dispose();
    cpOVProcessingCardModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
