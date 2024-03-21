import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_o_p_status_card/cp_o_p_status_card_widget.dart';
import 'cp_o_card_show_parent_widget.dart' show CpOCardShowParentWidget;
import 'package:flutter/material.dart';

class CpOCardShowParentModel extends FlutterFlowModel<CpOCardShowParentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOPStatusCard component.
  late CpOPStatusCardModel cpOPStatusCardModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOPStatusCardModel = createModel(context, () => CpOPStatusCardModel());
  }

  @override
  void dispose() {
    cpOPStatusCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
