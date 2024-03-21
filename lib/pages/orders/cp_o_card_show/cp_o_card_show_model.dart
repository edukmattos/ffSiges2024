import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_o_priority_widget.dart';
import '/components/cp_o_statuses_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_o_card_show_widget.dart' show CpOCardShowWidget;
import 'package:flutter/material.dart';

class CpOCardShowModel extends FlutterFlowModel<CpOCardShowWidget> {
  ///  Local state fields for this component.

  bool lcsvDetailsRequest = false;

  ///  State fields for stateful widgets in this component.

  // Model for cpOPriority component.
  late CpOPriorityModel cpOPriorityModel;
  // Model for cpOStatuses component.
  late CpOStatusesModel cpOStatusesModel;
  // Stores action output result for [Action Block - abGuardian] action in Button widget.
  bool? isAllowed;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersVisitsRow? resVisitAdded;
  // Stores action output result for [Backend Call - API (usersByTeamId)] action in Button widget.
  ApiCallResponse? resUsersTeamCurrent;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOPriorityModel = createModel(context, () => CpOPriorityModel());
    cpOStatusesModel = createModel(context, () => CpOStatusesModel());
  }

  @override
  void dispose() {
    cpOPriorityModel.dispose();
    cpOStatusesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
