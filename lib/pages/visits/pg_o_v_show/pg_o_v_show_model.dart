import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/orders/cp_o_card_show/cp_o_card_show_widget.dart';
import '/pages/orders/cp_o_v_show/cp_o_v_show_widget.dart';
import '/pages/visits/cp_o_v_services_list/cp_o_v_services_list_widget.dart';
import 'dart:async';
import 'pg_o_v_show_widget.dart' show PgOVShowWidget;
import 'package:flutter/material.dart';

class PgOVShowModel extends FlutterFlowModel<PgOVShowWidget> {
  ///  Local state fields for this page.

  String? lpsvMenuOption;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<VOrdersVisitsAssetsRow>>? requestCompleter2;
  Completer<List<VOrdersVisitsVehiclesRow>>? requestCompleter1;
  // Model for cpOCardShow component.
  late CpOCardShowModel cpOCardShowModel;
  // Model for cpOVShow component.
  late CpOVShowModel cpOVShowModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowed;
  // Model for cpOVServicesList component.
  late CpOVServicesListModel cpOVServicesListModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOCardShowModel = createModel(context, () => CpOCardShowModel());
    cpOVShowModel = createModel(context, () => CpOVShowModel());
    cpOVServicesListModel = createModel(context, () => CpOVServicesListModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpOCardShowModel.dispose();
    cpOVShowModel.dispose();
    cpOVServicesListModel.dispose();
    cpMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
