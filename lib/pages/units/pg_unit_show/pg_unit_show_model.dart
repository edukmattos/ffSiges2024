import '/flutter_flow/flutter_flow_util.dart';
import '/pages/units/cp_unit_card_show/cp_unit_card_show_widget.dart';
import 'pg_unit_show_widget.dart' show PgUnitShowWidget;
import 'package:flutter/material.dart';

class PgUnitShowModel extends FlutterFlowModel<PgUnitShowWidget> {
  ///  Local state fields for this page.

  String? lpsvOrdersView;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpUnitCardShow component.
  late CpUnitCardShowModel cpUnitCardShowModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpUnitCardShowModel = createModel(context, () => CpUnitCardShowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpUnitCardShowModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
