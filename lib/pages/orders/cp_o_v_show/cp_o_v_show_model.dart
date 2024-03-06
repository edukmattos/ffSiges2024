import '/components/cp_order_priority_widget.dart';
import '/components/cp_orders_statuses_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_o_v_show_widget.dart' show CpOVShowWidget;
import 'package:flutter/material.dart';

class CpOVShowModel extends FlutterFlowModel<CpOVShowWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOrderPriority component.
  late CpOrderPriorityModel cpOrderPriorityModel;
  // Model for cpOrdersStatuses component.
  late CpOrdersStatusesModel cpOrdersStatusesModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOrderPriorityModel = createModel(context, () => CpOrderPriorityModel());
    cpOrdersStatusesModel = createModel(context, () => CpOrdersStatusesModel());
  }

  @override
  void dispose() {
    cpOrderPriorityModel.dispose();
    cpOrdersStatusesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
