import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_order_parent_status_card/cp_order_parent_status_card_widget.dart';
import 'cp_order_parent_card_show_widget.dart' show CpOrderParentCardShowWidget;
import 'package:flutter/material.dart';

class CpOrderParentCardShowModel
    extends FlutterFlowModel<CpOrderParentCardShowWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOrderParentStatusCard component.
  late CpOrderParentStatusCardModel cpOrderParentStatusCardModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOrderParentStatusCardModel =
        createModel(context, () => CpOrderParentStatusCardModel());
  }

  @override
  void dispose() {
    cpOrderParentStatusCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
