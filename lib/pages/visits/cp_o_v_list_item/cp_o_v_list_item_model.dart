import '/components/cp_order_priority_widget.dart';
import '/components/cp_orders_statuses_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visits/cp_o_v_processing_card/cp_o_v_processing_card_widget.dart';
import 'cp_o_v_list_item_widget.dart' show CpOVListItemWidget;
import 'package:flutter/material.dart';

class CpOVListItemModel extends FlutterFlowModel<CpOVListItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOrderPriority component.
  late CpOrderPriorityModel cpOrderPriorityModel;
  // Model for cpOrdersStatuses component.
  late CpOrdersStatusesModel cpOrdersStatusesModel;
  // Model for cpOVProcessingCard component.
  late CpOVProcessingCardModel cpOVProcessingCardModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOrderPriorityModel = createModel(context, () => CpOrderPriorityModel());
    cpOrdersStatusesModel = createModel(context, () => CpOrdersStatusesModel());
    cpOVProcessingCardModel =
        createModel(context, () => CpOVProcessingCardModel());
  }

  @override
  void dispose() {
    cpOrderPriorityModel.dispose();
    cpOrdersStatusesModel.dispose();
    cpOVProcessingCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
