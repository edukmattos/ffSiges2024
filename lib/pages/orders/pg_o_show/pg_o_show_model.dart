import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_o_card_show/cp_o_card_show_widget.dart';
import 'pg_o_show_widget.dart' show PgOShowWidget;
import 'package:flutter/material.dart';

class PgOShowModel extends FlutterFlowModel<PgOShowWidget> {
  ///  Local state fields for this page.

  String lpsvOrdersVisitsProcessing = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpOCardShow component.
  late CpOCardShowModel cpOCardShowModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpOCardShowModel = createModel(context, () => CpOCardShowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpNotificationsIconModel.dispose();
    cpMenuModel.dispose();
    cpOCardShowModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
