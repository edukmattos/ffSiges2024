import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visits/cp_o_v_processing_card/cp_o_v_processing_card_widget.dart';
import 'cp_o_v_show_widget.dart' show CpOVShowWidget;
import 'package:flutter/material.dart';

class CpOVShowModel extends FlutterFlowModel<CpOVShowWidget> {
  ///  Local state fields for this component.

  List<DtVOrderVisitVehicleStruct> lcsvOVVehicles = [];
  void addToLcsvOVVehicles(DtVOrderVisitVehicleStruct item) =>
      lcsvOVVehicles.add(item);
  void removeFromLcsvOVVehicles(DtVOrderVisitVehicleStruct item) =>
      lcsvOVVehicles.remove(item);
  void removeAtIndexFromLcsvOVVehicles(int index) =>
      lcsvOVVehicles.removeAt(index);
  void insertAtIndexInLcsvOVVehicles(
          int index, DtVOrderVisitVehicleStruct item) =>
      lcsvOVVehicles.insert(index, item);
  void updateLcsvOVVehiclesAtIndex(
          int index, Function(DtVOrderVisitVehicleStruct) updateFn) =>
      lcsvOVVehicles[index] = updateFn(lcsvOVVehicles[index]);

  ///  State fields for stateful widgets in this component.

  // Model for cpOVProcessingCard component.
  late CpOVProcessingCardModel cpOVProcessingCardModel1;
  // Stores action output result for [Backend Call - API (vehiclesByOrderVisitId)] action in Button widget.
  ApiCallResponse? resOrderVisitVehicles;
  // Model for cpOVProcessingCard component.
  late CpOVProcessingCardModel cpOVProcessingCardModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOVProcessingCardModel1 =
        createModel(context, () => CpOVProcessingCardModel());
    cpOVProcessingCardModel2 =
        createModel(context, () => CpOVProcessingCardModel());
  }

  @override
  void dispose() {
    cpOVProcessingCardModel1.dispose();
    cpOVProcessingCardModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
