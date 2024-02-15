import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_order_visit_processing/cp_order_visit_processing_widget.dart';
import 'cp_order_visit_card1_show_widget.dart' show CpOrderVisitCard1ShowWidget;
import 'package:flutter/material.dart';

class CpOrderVisitCard1ShowModel
    extends FlutterFlowModel<CpOrderVisitCard1ShowWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOrderVisitProcessing component.
  late CpOrderVisitProcessingModel cpOrderVisitProcessingModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOrderVisitProcessingModel =
        createModel(context, () => CpOrderVisitProcessingModel());
  }

  @override
  void dispose() {
    cpOrderVisitProcessingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
