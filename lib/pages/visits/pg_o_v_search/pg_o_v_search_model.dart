import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/user/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'pg_o_v_search_widget.dart' show PgOVSearchWidget;
import 'package:flutter/material.dart';

class PgOVSearchModel extends FlutterFlowModel<PgOVSearchWidget> {
  ///  Local state fields for this page.

  double lpsvSumPriceServices = 0.0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DtVOrderVisitStruct>();
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpDBUserAvailableModel.dispose();
    cpMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
