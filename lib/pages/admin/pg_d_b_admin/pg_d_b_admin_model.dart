import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import 'pg_d_b_admin_widget.dart' show PgDBAdminWidget;
import 'package:flutter/material.dart';

class PgDBAdminModel extends FlutterFlowModel<PgDBAdminWidget> {
  ///  Local state fields for this page.

  String lpsvOrdersOrVisits = 'orders';

  int? lpsvOrderStatusId;

  bool? lpsvIsParent = true;

  int lpsvVisitsProcessingId = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpMenuModel.dispose();
    cpNotificationsIconModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
