import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/visits/cp_order_visit_card1_show/cp_order_visit_card1_show_widget.dart';
import 'dart:async';
import 'pg_dashboard_user_orders_widget.dart' show PgDashboardUserOrdersWidget;
import 'package:flutter/material.dart';

class PgDashboardUserOrdersModel
    extends FlutterFlowModel<PgDashboardUserOrdersWidget> {
  ///  Local state fields for this page.

  String lpsvOrdersView = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<VOrdersCountByTeamsStatusesRow>>? requestCompleter1;
  Completer<List<VOrdersCountByTeamsStatusesRow>>? requestCompleter2;
  // Stores action output result for [Backend Call - API (authLogout)] action in pgDashboardUserOrders widget.
  ApiCallResponse? apiResultqrx;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpOrderVisitCard1Show component.
  late CpOrderVisitCard1ShowModel cpOrderVisitCard1ShowModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpOrderVisitCard1ShowModel =
        createModel(context, () => CpOrderVisitCard1ShowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpNotificationsIconModel.dispose();
    cpMenuModel.dispose();
    cpOrderVisitCard1ShowModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
