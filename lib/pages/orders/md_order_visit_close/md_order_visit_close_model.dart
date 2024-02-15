import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_dropdown_visit_orders_statuses/cp_dropdown_visit_orders_statuses_widget.dart';
import 'md_order_visit_close_widget.dart' show MdOrderVisitCloseWidget;
import 'package:flutter/material.dart';

class MdOrderVisitCloseModel extends FlutterFlowModel<MdOrderVisitCloseWidget> {
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
  // Stores action output result for [Backend Call - API (apiDtUsersByVisitId)] action in mdOrderVisitClose widget.
  ApiCallResponse? resOrderVisitTeamCurrent;
  // Model for cpDropdownVisitOrdersStatuses component.
  late CpDropdownVisitOrdersStatusesModel cpDropdownVisitOrdersStatusesModel;
  // Stores action output result for [Backend Call - Update Row] action in Button widget.
  List<OrdersVisitsRow>? resOrderVisitCurrent;
  // Stores action output result for [Backend Call - Update Row] action in Button widget.
  List<UsersRow>? resUserVisitClose;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpDropdownVisitOrdersStatusesModel =
        createModel(context, () => CpDropdownVisitOrdersStatusesModel());
  }

  @override
  void dispose() {
    cpDropdownVisitOrdersStatusesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
