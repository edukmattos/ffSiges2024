import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/components/cp_dropdown_orders_contracts/cp_dropdown_orders_contracts_widget.dart';
import '/pages/components/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import '/pages/components/cp_dropdown_orders_types_subs/cp_dropdown_orders_types_subs_widget.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import '/pages/orders/cp_o_p_d_b_admin_card_show/cp_o_p_d_b_admin_card_show_widget.dart';
import 'pg_o_new_widget.dart' show PgONewWidget;
import 'package:flutter/material.dart';

class PgONewModel extends FlutterFlowModel<PgONewWidget> {
  ///  Local state fields for this page.

  int? lcsvOrderChildCounter;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for cpOPDBAdminCardShow component.
  late CpOPDBAdminCardShowModel cpOPDBAdminCardShowModel;
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
  // Stores action output result for [Action Block - abChoicesOrdersPrioritiesId] action in Button widget.
  int? resAbOrderPriorityId;
  // Stores action output result for [Backend Call - API (contractById)] action in Button widget.
  ApiCallResponse? resContractSelected;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersRow? resOrderAdded;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VOrdersRow>? resOPCurrent;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersStatusesLogsRow? resOAdded;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOPDBAdminCardShowModel =
        createModel(context, () => CpOPDBAdminCardShowModel());
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

    cpInputTexMultilineModel.inputTextMultineControllerValidator =
        _formTextFieldValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpOPDBAdminCardShowModel.dispose();
    cpInputTexMultilineModel.dispose();
    cpDropdownAssetsTagsModel.dispose();
    cpDropdownOrdersTypesModel.dispose();
    cpDropdownOrdersTypesSubsModel.dispose();
    cpDropdownOrdersContractsModel.dispose();
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
