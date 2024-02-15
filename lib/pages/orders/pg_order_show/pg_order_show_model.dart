import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_order_card_show/cp_order_card_show_widget.dart';
import 'pg_order_show_widget.dart' show PgOrderShowWidget;
import 'package:flutter/material.dart';

class PgOrderShowModel extends FlutterFlowModel<PgOrderShowWidget> {
  ///  Local state fields for this page.

  String lpsvOrdersVisitsProcessing = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpOrderCardShow component.
  late CpOrderCardShowModel cpOrderCardShowModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpOrderCardShowModel = createModel(context, () => CpOrderCardShowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpNotificationsIconModel.dispose();
    cpMenuModel.dispose();
    cpOrderCardShowModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
