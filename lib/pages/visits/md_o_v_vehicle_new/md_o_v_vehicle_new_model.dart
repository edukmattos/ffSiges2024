import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_vehicles/cp_dropdown_vehicles_widget.dart';
import '/pages/components/cp_input_integer/cp_input_integer_widget.dart';
import 'md_o_v_vehicle_new_widget.dart' show MdOVVehicleNewWidget;
import 'package:flutter/material.dart';

class MdOVVehicleNewModel extends FlutterFlowModel<MdOVVehicleNewWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDropdownVehicles component.
  late CpDropdownVehiclesModel cpDropdownVehiclesModel;
  // Model for cpInputRecorderStart.
  late CpInputIntegerModel cpInputRecorderStartModel;
  // Model for cpInputRecorderEnd.
  late CpInputIntegerModel cpInputRecorderEndModel;
  // Stores action output result for [Backend Call - API (vehicleById)] action in Button widget.
  ApiCallResponse? resVehicleSelected;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersVisitsVehiclesRow? resOVVehicleAdded;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpDropdownVehiclesModel =
        createModel(context, () => CpDropdownVehiclesModel());
    cpInputRecorderStartModel =
        createModel(context, () => CpInputIntegerModel());
    cpInputRecorderEndModel = createModel(context, () => CpInputIntegerModel());
  }

  @override
  void dispose() {
    cpDropdownVehiclesModel.dispose();
    cpInputRecorderStartModel.dispose();
    cpInputRecorderEndModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
