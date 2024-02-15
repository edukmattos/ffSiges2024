import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_order_parent_dash_card_show/cp_order_parent_dash_card_show_widget.dart';
import 'pg_order_parent_show_widget.dart' show PgOrderParentShowWidget;
import 'package:flutter/material.dart';

class PgOrderParentShowModel extends FlutterFlowModel<PgOrderParentShowWidget> {
  ///  Local state fields for this page.

  String lpsvListViewOptions = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpOrderParentDashCardShow component.
  late CpOrderParentDashCardShowModel cpOrderParentDashCardShowModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpOrderParentDashCardShowModel =
        createModel(context, () => CpOrderParentDashCardShowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpMenuModel.dispose();
    cpNotificationsIconModel.dispose();
    cpOrderParentDashCardShowModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
