import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_o_priority_widget.dart';
import '/components/cp_o_statuses_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'cp_o_card_show_row_widget.dart' show CpOCardShowRowWidget;
import 'package:flutter/material.dart';

class CpOCardShowRowModel extends FlutterFlowModel<CpOCardShowRowWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOPriority component.
  late CpOPriorityModel cpOPriorityModel;
  // Model for cpOStatuses component.
  late CpOStatusesModel cpOStatusesModel;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersVisitsRow? resVisitAdded;
  // Stores action output result for [Backend Call - API (usersByTeamId)] action in Button widget.
  ApiCallResponse? resUsersTeamCurrent;
  InstantTimer? instantTimerOVStart;

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
    instantTimerOVStart?.cancel();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
