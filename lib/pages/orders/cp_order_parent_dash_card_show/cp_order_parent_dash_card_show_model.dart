import '/backend/api_requests/api_calls.dart';
import '/components/cp_order_priority_widget.dart';
import '/components/cp_orders_statuses_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_order_parent_dash_card_show_widget.dart'
    show CpOrderParentDashCardShowWidget;
import 'package:flutter/material.dart';

class CpOrderParentDashCardShowModel
    extends FlutterFlowModel<CpOrderParentDashCardShowWidget> {
  ///  Local state fields for this component.

  bool isFollowed = true;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (orderFollowed)] action in cpOrderParentDashCardShow widget.
  ApiCallResponse? apiResultxzh;
  // Model for cpOrderPriority component.
  late CpOrderPriorityModel cpOrderPriorityModel;
  // Stores action output result for [Backend Call - API (orderFollowed)] action in IconButton widget.
  ApiCallResponse? apiResult6nl;
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
