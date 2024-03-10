import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/components/cp_dropdown_orders_causes/cp_dropdown_orders_causes_widget.dart';
import '/pages/components/cp_dropdown_orders_types/cp_dropdown_orders_types_widget.dart';
import '/pages/components/cp_dropdown_orders_types_subs/cp_dropdown_orders_types_subs_widget.dart';
import '/pages/orders/cp_dropdown_orders_cancel_reasons/cp_dropdown_orders_cancel_reasons_widget.dart';
import '/pages/orders/cp_dropdown_visit_orders_statuses/cp_dropdown_visit_orders_statuses_widget.dart';
import 'md_order_visit_to_approve_copy_widget.dart'
    show MdOrderVisitToApproveCopyWidget;
import 'package:flutter/material.dart';

class MdOrderVisitToApproveCopyModel
    extends FlutterFlowModel<MdOrderVisitToApproveCopyWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
  // Model for cpDropdownVisitOrdersStatuses component.
  late CpDropdownVisitOrdersStatusesModel cpDropdownVisitOrdersStatusesModel;
  // Model for cpDropdownOrdersCancelReasons component.
  late CpDropdownOrdersCancelReasonsModel cpDropdownOrdersCancelReasonsModel;
  // Model for cpDropdownOrdersCauses component.
  late CpDropdownOrdersCausesModel cpDropdownOrdersCausesModel;
  // Stores action output result for [Action Block - abChoicesOrdersPrioritiesId] action in Button widget.
  int? resAbOrderPriorityId;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpDropdownAssetsTagsModel =
        createModel(context, () => CpDropdownAssetsTagsModel());
    cpDropdownOrdersTypesModel =
        createModel(context, () => CpDropdownOrdersTypesModel());
    cpDropdownOrdersTypesSubsModel =
        createModel(context, () => CpDropdownOrdersTypesSubsModel());
    cpDropdownVisitOrdersStatusesModel =
        createModel(context, () => CpDropdownVisitOrdersStatusesModel());
    cpDropdownOrdersCancelReasonsModel =
        createModel(context, () => CpDropdownOrdersCancelReasonsModel());
    cpDropdownOrdersCausesModel =
        createModel(context, () => CpDropdownOrdersCausesModel());
  }

  @override
  void dispose() {
    cpDropdownAssetsTagsModel.dispose();
    cpDropdownOrdersTypesModel.dispose();
    cpDropdownOrdersTypesSubsModel.dispose();
    cpDropdownVisitOrdersStatusesModel.dispose();
    cpDropdownOrdersCancelReasonsModel.dispose();
    cpDropdownOrdersCausesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
