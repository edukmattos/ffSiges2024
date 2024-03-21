import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/components/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/units/cp_unit_card_show/cp_unit_card_show_widget.dart';
import 'dart:async';
import 'pg_o_p_new_widget.dart' show PgOPNewWidget;
import 'package:flutter/material.dart';

class PgOPNewModel extends FlutterFlowModel<PgOPNewWidget> {
  ///  Local state fields for this page.

  int lpsvStepForm = 1;

  int lpsvUnitId = 1;

  int lpsvAssetTagId = 1;

  int lpsvOrderCounter = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for cpInputTextSearch.
  late CpInputTextModel cpInputTextSearchModel;
  // Stores action output result for [Backend Call - API (unitsSearch)] action in IconButton widget.
  ApiCallResponse? resUnits;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for cpUnitCardShow component.
  late CpUnitCardShowModel cpUnitCardShowModel;
  // Model for cpDropdownAssetsTags component.
  late CpDropdownAssetsTagsModel cpDropdownAssetsTagsModel;
  // Model for cpInputTexMultiline component.
  late CpInputTexMultilineModel cpInputTexMultilineModel;
  // Model for cpDropdownOrdersTypes component.
  late CpDropdownOrdersTypesModel cpDropdownOrdersTypesModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for cpInputText component.
  late CpInputTextModel cpInputTextModel;
  // Stores action output result for [Action Block - abChoicesOrdersPrioritiesId] action in Button widget.
  int? resAbOrderPriorityId;
  // Stores action output result for [Backend Call - API (currentCounter)] action in Button widget.
  ApiCallResponse? resOrderCounterCurrent;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersCounterRow? resOrderCounterAdded;
  // Stores action output result for [Backend Call - API (unitById)] action in Button widget.
  ApiCallResponse? resOrderParentUnit;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersRow? resOrderParentAdded;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersStatusesLogsRow? resOrderStatusLogAdded;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpInputTextSearchModel = createModel(context, () => CpInputTextModel());
    cpUnitCardShowModel = createModel(context, () => CpUnitCardShowModel());
    cpDropdownAssetsTagsModel =
        createModel(context, () => CpDropdownAssetsTagsModel());
    cpInputTexMultilineModel =
        createModel(context, () => CpInputTexMultilineModel());
    cpDropdownOrdersTypesModel =
        createModel(context, () => CpDropdownOrdersTypesModel());
    cpInputTextModel = createModel(context, () => CpInputTextModel());

    cpInputTexMultilineModel.inputTextMultineControllerValidator =
        _formTextFieldValidator1;
    cpInputTextModel.inputTextControllerValidator = _formTextFieldValidator2;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpInputTextSearchModel.dispose();
    cpUnitCardShowModel.dispose();
    cpDropdownAssetsTagsModel.dispose();
    cpInputTexMultilineModel.dispose();
    cpDropdownOrdersTypesModel.dispose();
    cpInputTextModel.dispose();
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

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }
}
