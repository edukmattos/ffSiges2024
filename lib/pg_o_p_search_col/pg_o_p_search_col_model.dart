import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_o_p_d_b_admin_card_show/cp_o_p_d_b_admin_card_show_widget.dart';
import 'pg_o_p_search_col_widget.dart' show PgOPSearchColWidget;
import 'package:flutter/material.dart';

class PgOPSearchColModel extends FlutterFlowModel<PgOPSearchColWidget> {
  ///  Local state fields for this page.

  int? lpsvOSelected;

  int? lpsvOVSelected;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpOPDBAdminCardShow component.
  late CpOPDBAdminCardShowModel cpOPDBAdminCardShowModel;
  // Stores action output result for [Backend Call - API (orderVisitsByOrderId)] action in cpOCardShow widget.
  ApiCallResponse? apiResultnod;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOPDBAdminCardShowModel =
        createModel(context, () => CpOPDBAdminCardShowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpOPDBAdminCardShowModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
