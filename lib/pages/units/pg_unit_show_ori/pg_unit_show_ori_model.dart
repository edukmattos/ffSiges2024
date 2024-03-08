import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/units/cp_unit_card_show/cp_unit_card_show_widget.dart';
import 'pg_unit_show_ori_widget.dart' show PgUnitShowOriWidget;
import 'package:flutter/material.dart';

class PgUnitShowOriModel extends FlutterFlowModel<PgUnitShowOriWidget> {
  ///  Local state fields for this page.

  String lpsvOrdersView = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpUnitCardShow component.
  late CpUnitCardShowModel cpUnitCardShowModel;
  // Stores action output result for [Action Block - abGuardian] action in Icon widget.
  bool? isAllowed;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpUnitCardShowModel = createModel(context, () => CpUnitCardShowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpMenuModel.dispose();
    cpUnitCardShowModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
