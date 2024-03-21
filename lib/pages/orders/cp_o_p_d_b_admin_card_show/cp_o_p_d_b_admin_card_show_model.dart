import '/backend/api_requests/api_calls.dart';
import '/components/cp_o_priority_widget.dart';
import '/components/cp_o_statuses_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_o_p_d_b_admin_card_show_widget.dart' show CpOPDBAdminCardShowWidget;
import 'package:flutter/material.dart';

class CpOPDBAdminCardShowModel
    extends FlutterFlowModel<CpOPDBAdminCardShowWidget> {
  ///  Local state fields for this component.

  bool isFollowed = true;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (orderFollowed)] action in cpOPDBAdminCardShow widget.
  ApiCallResponse? apiResultxzh;
  // Stores action output result for [Backend Call - API (orderFollowed)] action in IconButton widget.
  ApiCallResponse? apiResult6nl;
  // Model for cpOPriority component.
  late CpOPriorityModel cpOPriorityModel;
  // Model for cpOStatuses component.
  late CpOStatusesModel cpOStatusesModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOPriorityModel = createModel(context, () => CpOPriorityModel());
    cpOStatusesModel = createModel(context, () => CpOStatusesModel());
  }

  @override
  void dispose() {
    cpOPriorityModel.dispose();
    cpOStatusesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
