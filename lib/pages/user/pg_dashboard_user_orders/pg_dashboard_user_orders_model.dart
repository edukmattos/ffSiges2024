import '/backend/api_requests/api_calls.dart';
import '/components/cp_orders_statuses_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/visits/cp_order_visit_card1_show/cp_order_visit_card1_show_widget.dart';
import 'pg_dashboard_user_orders_widget.dart' show PgDashboardUserOrdersWidget;
import 'package:flutter/material.dart';

class PgDashboardUserOrdersModel
    extends FlutterFlowModel<PgDashboardUserOrdersWidget> {
  ///  Local state fields for this page.

  int? lspvOrderStatusId = 3;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (authLogout)] action in pgDashboardUserOrders widget.
  ApiCallResponse? apiResultqrx;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpOrdersStatuses component.
  late CpOrdersStatusesModel cpOrdersStatusesModel1;
  // Model for cpOrdersStatuses component.
  late CpOrdersStatusesModel cpOrdersStatusesModel2;
  // Model for cpOrderVisitCard1Show component.
  late CpOrderVisitCard1ShowModel cpOrderVisitCard1ShowModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpOrdersStatusesModel1 =
        createModel(context, () => CpOrdersStatusesModel());
    cpOrdersStatusesModel2 =
        createModel(context, () => CpOrdersStatusesModel());
    cpOrderVisitCard1ShowModel =
        createModel(context, () => CpOrderVisitCard1ShowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpNotificationsIconModel.dispose();
    cpMenuModel.dispose();
    cpOrdersStatusesModel1.dispose();
    cpOrdersStatusesModel2.dispose();
    cpOrderVisitCard1ShowModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
