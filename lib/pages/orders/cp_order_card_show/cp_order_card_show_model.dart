import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_order_priority_widget.dart';
import '/components/cp_orders_statuses_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'cp_order_card_show_widget.dart' show CpOrderCardShowWidget;
import 'package:flutter/material.dart';

class CpOrderCardShowModel extends FlutterFlowModel<CpOrderCardShowWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOrderPriority component.
  late CpOrderPriorityModel cpOrderPriorityModel;
  // Model for cpOrdersStatuses component.
  late CpOrdersStatusesModel cpOrdersStatusesModel;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersVisitsRow? resVisitAdded;
  // Stores action output result for [Backend Call - API (usersByTeamId)] action in Button widget.
  ApiCallResponse? resUsersTeamCurrent;
  InstantTimer? instantTimerOVStart;

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
    instantTimerOVStart?.cancel();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
