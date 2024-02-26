import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/filters/cp_dropdown_filters_orders_types/cp_dropdown_filters_orders_types_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_orders_visits_processing/cp_dropdown_filters_orders_visits_processing_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_systems/cp_dropdown_filters_systems_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_systems_parents/cp_dropdown_filters_systems_parents_widget.dart';
import '/pages/components/filters/cp_dropdown_filters_units/cp_dropdown_filters_units_widget.dart';
import 'pg_orders_visits_search_widget.dart' show PgOrdersVisitsSearchWidget;
import 'package:flutter/material.dart';

class PgOrdersVisitsSearchModel
    extends FlutterFlowModel<PgOrdersVisitsSearchWidget> {
  ///  Local state fields for this page.

  List<DtVOrderVisitStruct> lpsvOrdersVisits = [];
  void addToLpsvOrdersVisits(DtVOrderVisitStruct item) =>
      lpsvOrdersVisits.add(item);
  void removeFromLpsvOrdersVisits(DtVOrderVisitStruct item) =>
      lpsvOrdersVisits.remove(item);
  void removeAtIndexFromLpsvOrdersVisits(int index) =>
      lpsvOrdersVisits.removeAt(index);
  void insertAtIndexInLpsvOrdersVisits(int index, DtVOrderVisitStruct item) =>
      lpsvOrdersVisits.insert(index, item);
  void updateLpsvOrdersVisitsAtIndex(
          int index, Function(DtVOrderVisitStruct) updateFn) =>
      lpsvOrdersVisits[index] = updateFn(lpsvOrdersVisits[index]);

  double lpsvPriceServicesSum = 0.0;

  double lpsvPriceMaterialsSum = 0.0;

  double lpsvPriceVehiculesSum = 0.0;

  double lpsvPriceTotalSum = 0.0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpDropdownFiltersSystemsParents component.
  late CpDropdownFiltersSystemsParentsModel
      cpDropdownFiltersSystemsParentsModel;
  // Model for cpDropdownFiltersSystems component.
  late CpDropdownFiltersSystemsModel cpDropdownFiltersSystemsModel;
  // Model for cpDropdownFiltersOrdersTypes component.
  late CpDropdownFiltersOrdersTypesModel cpDropdownFiltersOrdersTypesModel;
  // Model for cpDropdownFiltersOrdersVisitsProcessing component.
  late CpDropdownFiltersOrdersVisitsProcessingModel
      cpDropdownFiltersOrdersVisitsProcessingModel;
  // Model for cpDropdownFiltersUnits component.
  late CpDropdownFiltersUnitsModel cpDropdownFiltersUnitsModel;
  // Stores action output result for [Backend Call - API (searchFilters)] action in Button widget.
  ApiCallResponse? resOrdersVisits;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DtVOrderVisitStruct>();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpDropdownFiltersSystemsParentsModel =
        createModel(context, () => CpDropdownFiltersSystemsParentsModel());
    cpDropdownFiltersSystemsModel =
        createModel(context, () => CpDropdownFiltersSystemsModel());
    cpDropdownFiltersOrdersTypesModel =
        createModel(context, () => CpDropdownFiltersOrdersTypesModel());
    cpDropdownFiltersOrdersVisitsProcessingModel = createModel(
        context, () => CpDropdownFiltersOrdersVisitsProcessingModel());
    cpDropdownFiltersUnitsModel =
        createModel(context, () => CpDropdownFiltersUnitsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpDropdownFiltersSystemsParentsModel.dispose();
    cpDropdownFiltersSystemsModel.dispose();
    cpDropdownFiltersOrdersTypesModel.dispose();
    cpDropdownFiltersOrdersVisitsProcessingModel.dispose();
    cpDropdownFiltersUnitsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
