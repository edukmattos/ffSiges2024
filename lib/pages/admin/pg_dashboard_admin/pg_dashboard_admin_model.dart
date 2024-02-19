import '/backend/supabase/supabase.dart';
import '/components/cp_orders_statuses_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import 'dart:async';
import 'pg_dashboard_admin_widget.dart' show PgDashboardAdminWidget;
import 'package:flutter/material.dart';

class PgDashboardAdminModel extends FlutterFlowModel<PgDashboardAdminWidget> {
  ///  Local state fields for this page.

  String lpsvOrdersView = '';

  int? lpsvOrderStatusId;

  bool? lpsvIsParent = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<VDashAdminOrdersScheduledRow>>? requestCompleter3;
  Completer<List<VDashAdminOrdersInProgressRow>>? requestCompleter2;
  Completer<List<VDashAdminOrdersSuspendedRow>>? requestCompleter1;
  // Model for cpOrdersStatuses component.
  late CpOrdersStatusesModel cpOrdersStatusesModel1;
  // Model for cpOrdersStatuses component.
  late CpOrdersStatusesModel cpOrdersStatusesModel2;
  // Model for cpOrdersStatuses component.
  late CpOrdersStatusesModel cpOrdersStatusesModel3;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOrdersStatusesModel1 =
        createModel(context, () => CpOrdersStatusesModel());
    cpOrdersStatusesModel2 =
        createModel(context, () => CpOrdersStatusesModel());
    cpOrdersStatusesModel3 =
        createModel(context, () => CpOrdersStatusesModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpOrdersStatusesModel1.dispose();
    cpOrdersStatusesModel2.dispose();
    cpOrdersStatusesModel3.dispose();
    cpMenuModel.dispose();
    cpNotificationsIconModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
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
}
