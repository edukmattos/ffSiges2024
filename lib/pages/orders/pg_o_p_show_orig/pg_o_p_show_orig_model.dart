import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import 'pg_o_p_show_orig_widget.dart' show PgOPShowOrigWidget;
import 'package:flutter/material.dart';

class PgOPShowOrigModel extends FlutterFlowModel<PgOPShowOrigWidget> {
  ///  Local state fields for this page.

  String lpsvListViewOptions = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Stores action output result for [Action Block - abGuardian] action in Icon widget.
  bool? isAllowed;

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
