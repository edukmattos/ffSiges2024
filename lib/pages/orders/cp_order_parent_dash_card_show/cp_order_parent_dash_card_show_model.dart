import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_order_parent_status_card/cp_order_parent_status_card_widget.dart';
import 'cp_order_parent_dash_card_show_widget.dart'
    show CpOrderParentDashCardShowWidget;
import 'package:flutter/material.dart';

class CpOrderParentDashCardShowModel
    extends FlutterFlowModel<CpOrderParentDashCardShowWidget> {
  ///  Local state fields for this component.

  bool isFollowed = true;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (orderFollowed)] action in cpOrderParentDashCardShow widget.
  ApiCallResponse? apiResultxzh;
  // Stores action output result for [Backend Call - API (orderFollowed)] action in IconButton widget.
  ApiCallResponse? apiResult6nl;
  // Model for cpOrderParentStatusCard component.
  late CpOrderParentStatusCardModel cpOrderParentStatusCardModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOrderParentStatusCardModel =
        createModel(context, () => CpOrderParentStatusCardModel());
  }

  @override
  void dispose() {
    cpOrderParentStatusCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
