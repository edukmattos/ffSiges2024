import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_o_p_show/cp_o_p_show_widget.dart';
import 'pg_o_p_show1_widget.dart' show PgOPShow1Widget;
import 'package:flutter/material.dart';

class PgOPShow1Model extends FlutterFlowModel<PgOPShow1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpOPShow component.
  late CpOPShowModel cpOPShowModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOPShowModel = createModel(context, () => CpOPShowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpOPShowModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
