import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import '/pages/orders/cp_dropdown_orders_cancel_reasons/cp_dropdown_orders_cancel_reasons_widget.dart';
import '/pages/orders/cp_dropdown_visit_orders_statuses/cp_dropdown_visit_orders_statuses_widget.dart';
import 'md_o_v_cancel_widget.dart' show MdOVCancelWidget;
import 'package:flutter/material.dart';

class MdOVCancelModel extends FlutterFlowModel<MdOVCancelWidget> {
  ///  Local state fields for this component.

  List<ApiDtUsersByVisitIdStruct> lcsvUsersByVisitId = [];
  void addToLcsvUsersByVisitId(ApiDtUsersByVisitIdStruct item) =>
      lcsvUsersByVisitId.add(item);
  void removeFromLcsvUsersByVisitId(ApiDtUsersByVisitIdStruct item) =>
      lcsvUsersByVisitId.remove(item);
  void removeAtIndexFromLcsvUsersByVisitId(int index) =>
      lcsvUsersByVisitId.removeAt(index);
  void insertAtIndexInLcsvUsersByVisitId(
          int index, ApiDtUsersByVisitIdStruct item) =>
      lcsvUsersByVisitId.insert(index, item);
  void updateLcsvUsersByVisitIdAtIndex(
          int index, Function(ApiDtUsersByVisitIdStruct) updateFn) =>
      lcsvUsersByVisitId[index] = updateFn(lcsvUsersByVisitId[index]);

  int lcsvAppPageId = 3;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (apiDtUsersByVisitId)] action in mdOVCancel widget.
  ApiCallResponse? resOrderVisitTeamCurrent;
  // Model for cpDropdownOrdersCancelReasons component.
  late CpDropdownOrdersCancelReasonsModel cpDropdownOrdersCancelReasonsModel;
  // Model for cpDropdownVisitOrdersStatuses component.
  late CpDropdownVisitOrdersStatusesModel cpDropdownVisitOrdersStatusesModel;
  // Model for cpInputTexMultiline component.
  late CpInputTexMultilineModel cpInputTexMultilineModel;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrdersVisitsRow>? resOrderVisitCurrent;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsersRow>? resUserVisitClose;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpDropdownOrdersCancelReasonsModel =
        createModel(context, () => CpDropdownOrdersCancelReasonsModel());
    cpDropdownVisitOrdersStatusesModel =
        createModel(context, () => CpDropdownVisitOrdersStatusesModel());
    cpInputTexMultilineModel =
        createModel(context, () => CpInputTexMultilineModel());
  }

  @override
  void dispose() {
    cpDropdownOrdersCancelReasonsModel.dispose();
    cpDropdownVisitOrdersStatusesModel.dispose();
    cpInputTexMultilineModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
