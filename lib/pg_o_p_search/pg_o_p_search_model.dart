import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_o_p_d_b_admin_card_show/cp_o_p_d_b_admin_card_show_widget.dart';
import 'pg_o_p_search_widget.dart' show PgOPSearchWidget;
import 'package:flutter/material.dart';

class PgOPSearchModel extends FlutterFlowModel<PgOPSearchWidget> {
  ///  Local state fields for this page.

  int? lpsvOSelected;

  int? lpsvOVSelected;

  VOrdersRow? lpsvOPRow;

  List<VOrdersRow> lpsvORows = [];
  void addToLpsvORows(VOrdersRow item) => lpsvORows.add(item);
  void removeFromLpsvORows(VOrdersRow item) => lpsvORows.remove(item);
  void removeAtIndexFromLpsvORows(int index) => lpsvORows.removeAt(index);
  void insertAtIndexInLpsvORows(int index, VOrdersRow item) =>
      lpsvORows.insert(index, item);
  void updateLpsvORowsAtIndex(int index, Function(VOrdersRow) updateFn) =>
      lpsvORows[index] = updateFn(lpsvORows[index]);

  List<VOrdersVisitsRow> lpsvOVRows = [];
  void addToLpsvOVRows(VOrdersVisitsRow item) => lpsvOVRows.add(item);
  void removeFromLpsvOVRows(VOrdersVisitsRow item) => lpsvOVRows.remove(item);
  void removeAtIndexFromLpsvOVRows(int index) => lpsvOVRows.removeAt(index);
  void insertAtIndexInLpsvOVRows(int index, VOrdersVisitsRow item) =>
      lpsvOVRows.insert(index, item);
  void updateLpsvOVRowsAtIndex(
          int index, Function(VOrdersVisitsRow) updateFn) =>
      lpsvOVRows[index] = updateFn(lpsvOVRows[index]);

  List<VOrdersVisitsAssetsRow> lpsvOVAssetRows = [];
  void addToLpsvOVAssetRows(VOrdersVisitsAssetsRow item) =>
      lpsvOVAssetRows.add(item);
  void removeFromLpsvOVAssetRows(VOrdersVisitsAssetsRow item) =>
      lpsvOVAssetRows.remove(item);
  void removeAtIndexFromLpsvOVAssetRows(int index) =>
      lpsvOVAssetRows.removeAt(index);
  void insertAtIndexInLpsvOVAssetRows(int index, VOrdersVisitsAssetsRow item) =>
      lpsvOVAssetRows.insert(index, item);
  void updateLpsvOVAssetRowsAtIndex(
          int index, Function(VOrdersVisitsAssetsRow) updateFn) =>
      lpsvOVAssetRows[index] = updateFn(lpsvOVAssetRows[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in pgOPSearch widget.
  List<VOrdersRow>? resOs;
  // Stores action output result for [Backend Call - Query Rows] action in pgOPSearch widget.
  List<VOrdersVisitsRow>? resOVs;
  // Stores action output result for [Backend Call - Query Rows] action in pgOPSearch widget.
  List<VOrdersVisitsAssetsRow>? resOVAssets;
  // Model for cpOPDBAdminCardShow component.
  late CpOPDBAdminCardShowModel cpOPDBAdminCardShowModel;
  // Stores action output result for [Action Block - abGuardian] action in Button widget.
  bool? isAllowed;

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
