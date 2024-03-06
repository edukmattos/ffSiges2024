import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/filters/cp_dropdown_filters_contracts/cp_dropdown_filters_contracts_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_orders_types/cp_dropdown_filters_orders_types_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_orders_types_subs/cp_dropdown_filters_orders_types_subs_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_orders_visits_processing/cp_dropdown_filters_orders_visits_processing_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_systems/cp_dropdown_filters_systems_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_systems_parents/cp_dropdown_filters_systems_parents_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_units/cp_dropdown_filters_units_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_units_types_parent/cp_dropdown_filters_units_types_parent_widget.dart';
import 'md_o_v_search_filters_widget.dart' show MdOVSearchFiltersWidget;
import 'package:flutter/material.dart';

class MdOVSearchFiltersModel extends FlutterFlowModel<MdOVSearchFiltersWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDropdownFiltersSystemsParents component.
  late CpDropdownFiltersSystemsParentsModel
      cpDropdownFiltersSystemsParentsModel;
  // Model for cpDropdownFiltersSystems component.
  late CpDropdownFiltersSystemsModel cpDropdownFiltersSystemsModel;
  // Model for cpDropdownFiltersUnitsTypesParent component.
  late CpDropdownFiltersUnitsTypesParentModel
      cpDropdownFiltersUnitsTypesParentModel;
  // Model for cpDropdownFiltersUnits component.
  late CpDropdownFiltersUnitsModel cpDropdownFiltersUnitsModel;
  // Model for cpDropdownFiltersOrdersTypes component.
  late CpDropdownFiltersOrdersTypesModel cpDropdownFiltersOrdersTypesModel;
  // Model for cpDropdownFiltersOrdersTypesSubs component.
  late CpDropdownFiltersOrdersTypesSubsModel
      cpDropdownFiltersOrdersTypesSubsModel;
  // Model for cpDropdownFiltersContracts component.
  late CpDropdownFiltersContractsModel cpDropdownFiltersContractsModel;
  // Model for cpDropdownFiltersOrdersVisitsProcessing component.
  late CpDropdownFiltersOrdersVisitsProcessingModel
      cpDropdownFiltersOrdersVisitsProcessingModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpDropdownFiltersSystemsParentsModel =
        createModel(context, () => CpDropdownFiltersSystemsParentsModel());
    cpDropdownFiltersSystemsModel =
        createModel(context, () => CpDropdownFiltersSystemsModel());
    cpDropdownFiltersUnitsTypesParentModel =
        createModel(context, () => CpDropdownFiltersUnitsTypesParentModel());
    cpDropdownFiltersUnitsModel =
        createModel(context, () => CpDropdownFiltersUnitsModel());
    cpDropdownFiltersOrdersTypesModel =
        createModel(context, () => CpDropdownFiltersOrdersTypesModel());
    cpDropdownFiltersOrdersTypesSubsModel =
        createModel(context, () => CpDropdownFiltersOrdersTypesSubsModel());
    cpDropdownFiltersContractsModel =
        createModel(context, () => CpDropdownFiltersContractsModel());
    cpDropdownFiltersOrdersVisitsProcessingModel = createModel(
        context, () => CpDropdownFiltersOrdersVisitsProcessingModel());
  }

  @override
  void dispose() {
    cpDropdownFiltersSystemsParentsModel.dispose();
    cpDropdownFiltersSystemsModel.dispose();
    cpDropdownFiltersUnitsTypesParentModel.dispose();
    cpDropdownFiltersUnitsModel.dispose();
    cpDropdownFiltersOrdersTypesModel.dispose();
    cpDropdownFiltersOrdersTypesSubsModel.dispose();
    cpDropdownFiltersContractsModel.dispose();
    cpDropdownFiltersOrdersVisitsProcessingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
