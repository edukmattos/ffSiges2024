import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_o_p_d_b_admin_card_show/cp_o_p_d_b_admin_card_show_widget.dart';
import 'pg_o_programming_widget.dart' show PgOProgrammingWidget;
import 'package:flutter/material.dart';

class PgOProgrammingModel extends FlutterFlowModel<PgOProgrammingWidget> {
  ///  Local state fields for this page.

  String lpsvListViewOptions = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpOPDBAdminCardShow component.
  late CpOPDBAdminCardShowModel cpOPDBAdminCardShowModel;
  // Model for cpDropdownAssetsTags component.
  late CpDropdownAssetsTagsModel cpDropdownAssetsTagsModel;
  // Stores action output result for [Backend Call - API (assetsByUnitTag)] action in IconButton widget.
  ApiCallResponse? resUnits;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpOPDBAdminCardShowModel =
        createModel(context, () => CpOPDBAdminCardShowModel());
    cpDropdownAssetsTagsModel =
        createModel(context, () => CpDropdownAssetsTagsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpMenuModel.dispose();
    cpNotificationsIconModel.dispose();
    cpOPDBAdminCardShowModel.dispose();
    cpDropdownAssetsTagsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
