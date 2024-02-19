import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/components/cp_dropdown_leader_teams_selected/cp_dropdown_leader_teams_selected_widget.dart';
import '/pages/components/cp_dropdown_orders_contracts/cp_dropdown_orders_contracts_widget.dart';
import '/pages/components/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import '/pages/components/cp_dropdown_orders_types_subs/cp_dropdown_orders_types_subs_widget.dart';
import '/pages/components/cp_dropdown_teams_department/cp_dropdown_teams_department_widget.dart';
import '/pages/components/cp_input_date_disabled/cp_input_date_disabled_widget.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import 'md_order_new_copy_widget.dart' show MdOrderNewCopyWidget;
import 'package:flutter/material.dart';

class MdOrderNewCopyModel extends FlutterFlowModel<MdOrderNewCopyWidget> {
  ///  Local state fields for this component.

  DateTime? lcsvExpectedDateStart;

  int? lcsvOrderChildCounter;

  int lcsvCompanyId = 1;

  int lcsvDepartmentId = 1;

  int lcsvContractId = 1;

  int lcsvStepForm = 1;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpInputTexMultiline component.
  late CpInputTexMultilineModel cpInputTexMultilineModel;
  // Model for cpDropdownAssetsTags component.
  late CpDropdownAssetsTagsModel cpDropdownAssetsTagsModel;
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
  // Model for cpDropdownOrdersContracts component.
  late CpDropdownOrdersContractsModel cpDropdownOrdersContractsModel;
  // Model for cpDropdownTeamsDepartment component.
  late CpDropdownTeamsDepartmentModel cpDropdownTeamsDepartmentModel;
  // Stores action output result for [Backend Call - API (contractById)] action in cpDropdownTeamsDepartment widget.
  ApiCallResponse? resContractSelected;
  // Model for cpDropdownLeaderTeamsSelected component.
  late CpDropdownLeaderTeamsSelectedModel cpDropdownLeaderTeamsSelectedModel;
  DateTime? datePicked;
  // Model for cpInputDateDisabled component.
  late CpInputDateDisabledModel cpInputDateDisabledModel;
  // Stores action output result for [Action Block - abChoicesOrdersPrioritiesId] action in Button widget.
  int? resAbOrderPriorityId;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersRow? resOrderAdded;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpInputTexMultilineModel =
        createModel(context, () => CpInputTexMultilineModel());
    cpDropdownAssetsTagsModel =
        createModel(context, () => CpDropdownAssetsTagsModel());
    cpDropdownOrdersTypesModel =
        createModel(context, () => CpDropdownOrdersTypesModel());
    cpDropdownOrdersTypesSubsModel =
        createModel(context, () => CpDropdownOrdersTypesSubsModel());
    cpDropdownOrdersContractsModel =
        createModel(context, () => CpDropdownOrdersContractsModel());
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
    cpDropdownAssetsTagsModel.dispose();
    cpDropdownOrdersTypesModel.dispose();
    cpDropdownOrdersTypesSubsModel.dispose();
    cpDropdownOrdersContractsModel.dispose();
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
