import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_order_parent_status_card/cp_order_parent_status_card_widget.dart';
import 'cp_order_card_show_widget.dart' show CpOrderCardShowWidget;
import 'package:flutter/material.dart';

class CpOrderCardShowModel extends FlutterFlowModel<CpOrderCardShowWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOrderParentStatusCard component.
  late CpOrderParentStatusCardModel cpOrderParentStatusCardModel;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersVisitsRow? resVisitAdded;
  // Stores action output result for [Backend Call - API (usersByTeamId)] action in Button widget.
  ApiCallResponse? resUsersTeamCurrent;

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
