import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_o_v_in_progress_show/cp_o_v_in_progress_show_widget.dart';
import 'pg_d_b_user_visits_widget.dart' show PgDBUserVisitsWidget;
import 'package:flutter/material.dart';

class PgDBUserVisitsModel extends FlutterFlowModel<PgDBUserVisitsWidget> {
  ///  Local state fields for this page.

  int lpsvVisitsProcessingId = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (orderVisitsOpenByTeamLeaderId)] action in pgDBUserVisits widget.
  ApiCallResponse? apiResultgnm;
  // Stores action output result for [Backend Call - API (orderVisitsOpenByTeamLeaderId)] action in pgDBUserVisits widget.
  ApiCallResponse? apiResult1d8;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpOVInProgressShow component.
  late CpOVInProgressShowModel cpOVInProgressShowModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpOVInProgressShowModel =
        createModel(context, () => CpOVInProgressShowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpNotificationsIconModel.dispose();
    cpMenuModel.dispose();
    cpOVInProgressShowModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
