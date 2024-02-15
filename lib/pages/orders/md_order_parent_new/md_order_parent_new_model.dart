import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import 'md_order_parent_new_widget.dart' show MdOrderParentNewWidget;
import 'package:flutter/material.dart';

class MdOrderParentNewModel extends FlutterFlowModel<MdOrderParentNewWidget> {
  ///  Local state fields for this component.

  int? lcsvOrderCounter;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
    cpInputTexMultilineModel.dispose();
    cpDropdownOrdersTypesModel.dispose();
    cpInputTextModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

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
