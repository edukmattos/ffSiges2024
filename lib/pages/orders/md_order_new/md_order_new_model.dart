import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cp_dropdown_leader_teams_selected/cp_dropdown_leader_teams_selected_widget.dart';
import '/pages/components/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import '/pages/components/cp_dropdown_orders_types_subs/cp_dropdown_orders_types_subs_widget.dart';
import '/pages/components/cp_dropdown_teams_department/cp_dropdown_teams_department_widget.dart';
import '/pages/components/cp_input_date_disabled/cp_input_date_disabled_widget.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import 'md_order_new_widget.dart' show MdOrderNewWidget;
import 'package:flutter/material.dart';

class MdOrderNewModel extends FlutterFlowModel<MdOrderNewWidget> {
  ///  Local state fields for this component.

  DateTime? lcsvExpectedDateStart;

  int? lcsvOrderChildCounter;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpInputTexMultiline component.
  late CpInputTexMultilineModel cpInputTexMultilineModel;
  // Model for cpDropdownOrdersTypes component.
  late CpDropdownOrdersTypesModel cpDropdownOrdersTypesModel;
  // Model for cpDropdownOrdersTypesSubs component.
  late CpDropdownOrdersTypesSubsModel cpDropdownOrdersTypesSubsModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for cpDropdownTeamsDepartment component.
  late CpDropdownTeamsDepartmentModel cpDropdownTeamsDepartmentModel;
  // Model for cpDropdownLeaderTeamsSelected component.
  late CpDropdownLeaderTeamsSelectedModel cpDropdownLeaderTeamsSelectedModel;
  DateTime? datePicked;
  // Model for cpInputDateDisabled component.
  late CpInputDateDisabledModel cpInputDateDisabledModel;
  // Stores action output result for [Action Block - abChoicesOrdersPrioritiesId] action in Button widget.
  int? resAbOrderPriorityId;
  // Stores action output result for [Backend Call - API (orderParenById)] action in Button widget.
  ApiCallResponse? resOrderParentCurrent;
  // Stores action output result for [Backend Call - API (unitById)] action in Button widget.
  ApiCallResponse? resOrderParentUnit;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersRow? resOrderAdded;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpInputTexMultilineModel =
        createModel(context, () => CpInputTexMultilineModel());
    cpDropdownOrdersTypesModel =
        createModel(context, () => CpDropdownOrdersTypesModel());
    cpDropdownOrdersTypesSubsModel =
        createModel(context, () => CpDropdownOrdersTypesSubsModel());
    cpDropdownTeamsDepartmentModel =
        createModel(context, () => CpDropdownTeamsDepartmentModel());
    cpDropdownLeaderTeamsSelectedModel =
        createModel(context, () => CpDropdownLeaderTeamsSelectedModel());
    cpInputDateDisabledModel =
        createModel(context, () => CpInputDateDisabledModel());

    cpInputTexMultilineModel.inputTextMultineControllerValidator =
        _formTextFieldValidator;
  }

  @override
  void dispose() {
    cpInputTexMultilineModel.dispose();
    cpDropdownOrdersTypesModel.dispose();
    cpDropdownOrdersTypesSubsModel.dispose();
    cpDropdownTeamsDepartmentModel.dispose();
    cpDropdownLeaderTeamsSelectedModel.dispose();
    cpInputDateDisabledModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? _formTextFieldValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }
}
