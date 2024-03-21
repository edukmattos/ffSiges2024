import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_o_v_in_progress_show/cp_o_v_in_progress_show_widget.dart';
import '/pages/user/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'pg_d_b_user_orders_widget.dart' show PgDBUserOrdersWidget;
import 'package:flutter/material.dart';

class PgDBUserOrdersModel extends FlutterFlowModel<PgDBUserOrdersWidget> {
  ///  Local state fields for this page.

  int lpsvOrderStatusId = 3;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (authLogout)] action in pgDBUserOrders widget.
  ApiCallResponse? apiResultqrx;
  InstantTimer? instantTimerTracker;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpOVInProgressShow component.
  late CpOVInProgressShowModel cpOVInProgressShowModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpOVInProgressShowModel =
        createModel(context, () => CpOVInProgressShowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimerTracker?.cancel();
    cpNotificationsIconModel.dispose();
    cpMenuModel.dispose();
    cpDBUserAvailableModel.dispose();
    cpOVInProgressShowModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
