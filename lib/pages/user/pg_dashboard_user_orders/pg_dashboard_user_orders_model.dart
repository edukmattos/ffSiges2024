import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/visits/cp_order_visit_card1_show/cp_order_visit_card1_show_widget.dart';
import 'pg_dashboard_user_orders_widget.dart' show PgDashboardUserOrdersWidget;
import 'package:flutter/material.dart';

class PgDashboardUserOrdersModel
    extends FlutterFlowModel<PgDashboardUserOrdersWidget> {
  ///  Local state fields for this page.

  String lpsvOrdersView = '';

  int? lpsvOrderStatusId;

  bool? lpsvIsParent = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (authLogout)] action in pgDashboardUserOrders widget.
  ApiCallResponse? apiResultqrx;
  // Model for cpOrderVisitCard1Show component.
  late CpOrderVisitCard1ShowModel cpOrderVisitCard1ShowModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOrderVisitCard1ShowModel =
        createModel(context, () => CpOrderVisitCard1ShowModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpOrderVisitCard1ShowModel.dispose();
    cpMenuModel.dispose();
    cpNotificationsIconModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
