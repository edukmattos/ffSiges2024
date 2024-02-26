import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/visits/cp_order_visit_services_list/cp_order_visit_services_list_widget.dart';
import 'pg_orders_visits_services_search_widget.dart'
    show PgOrdersVisitsServicesSearchWidget;
import 'package:flutter/material.dart';

class PgOrdersVisitsServicesSearchModel
    extends FlutterFlowModel<PgOrdersVisitsServicesSearchWidget> {
  ///  Local state fields for this page.

  List<DtVContractServicesStruct> lpsvContractServices = [];
  void addToLpsvContractServices(DtVContractServicesStruct item) =>
      lpsvContractServices.add(item);
  void removeFromLpsvContractServices(DtVContractServicesStruct item) =>
      lpsvContractServices.remove(item);
  void removeAtIndexFromLpsvContractServices(int index) =>
      lpsvContractServices.removeAt(index);
  void insertAtIndexInLpsvContractServices(
          int index, DtVContractServicesStruct item) =>
      lpsvContractServices.insert(index, item);
  void updateLpsvContractServicesAtIndex(
          int index, Function(DtVContractServicesStruct) updateFn) =>
      lpsvContractServices[index] = updateFn(lpsvContractServices[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpInputTextSearch.
  late CpInputTextModel cpInputTextSearchModel;
  // Stores action output result for [Backend Call - API (servicesBycontractId)] action in IconButton widget.
  ApiCallResponse? resContractsServices;
  // Model for cpOrderVisitServicesList component.
  late CpOrderVisitServicesListModel cpOrderVisitServicesListModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpInputTextSearchModel = createModel(context, () => CpInputTextModel());
    cpOrderVisitServicesListModel =
        createModel(context, () => CpOrderVisitServicesListModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpInputTextSearchModel.dispose();
    cpOrderVisitServicesListModel.dispose();
    cpMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
