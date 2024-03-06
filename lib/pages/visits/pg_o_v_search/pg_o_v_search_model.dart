import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import 'pg_o_v_search_widget.dart' show PgOVSearchWidget;
import 'package:flutter/material.dart';

class PgOVSearchModel extends FlutterFlowModel<PgOVSearchWidget> {
  ///  Local state fields for this page.

  double lpsvSumPriceServices = 0.0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DtVOrderVisitStruct>();
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
