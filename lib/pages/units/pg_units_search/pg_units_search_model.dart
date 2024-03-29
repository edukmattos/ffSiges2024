import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import 'dart:async';
import 'pg_units_search_widget.dart' show PgUnitsSearchWidget;
import 'package:flutter/material.dart';

class PgUnitsSearchModel extends FlutterFlowModel<PgUnitsSearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpInputTextSearch.
  late CpInputTextModel cpInputTextSearchModel;
  // Stores action output result for [Backend Call - API (unitsSearch)] action in IconButton widget.
  ApiCallResponse? resUnits;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Stores action output result for [Action Block - abGuardian] action in Icon widget.
  bool? isAllowed;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpInputTextSearchModel = createModel(context, () => CpInputTextModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpInputTextSearchModel.dispose();
    cpMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
