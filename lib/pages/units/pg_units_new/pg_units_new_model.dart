import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/units/cp_dropdown_systems/cp_dropdown_systems_widget.dart';
import '/pages/units/cp_dropdown_systems_parent/cp_dropdown_systems_parent_widget.dart';
import '/pages/units/cp_dropdown_units_types/cp_dropdown_units_types_widget.dart';
import '/pages/units/cp_dropdown_units_types_parent/cp_dropdown_units_types_parent_widget.dart';
import 'pg_units_new_widget.dart' show PgUnitsNewWidget;
import 'package:flutter/material.dart';

class PgUnitsNewModel extends FlutterFlowModel<PgUnitsNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpDropdownSystemsParent component.
  late CpDropdownSystemsParentModel cpDropdownSystemsParentModel;
  // Model for cpDropdownSystems component.
  late CpDropdownSystemsModel cpDropdownSystemsModel;
  // Model for cpDropdownUnitsTypesParent component.
  late CpDropdownUnitsTypesParentModel cpDropdownUnitsTypesParentModel;
  // Model for cpDropdownUnitsTypes component.
  late CpDropdownUnitsTypesModel cpDropdownUnitsTypesModel;
  // Model for cpInputTextCode.
  late CpInputTextModel cpInputTextCodeModel;
  // Model for cpInputTextDescription.
  late CpInputTextModel cpInputTextDescriptionModel;
  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  // Model for cpInputTextAddressComp.
  late CpInputTextModel cpInputTextAddressCompModel;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Stores action output result for [Backend Call - API (unitTypeById)] action in Button widget.
  ApiCallResponse? resUnitType;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpDropdownSystemsParentModel =
        createModel(context, () => CpDropdownSystemsParentModel());
    cpDropdownSystemsModel =
        createModel(context, () => CpDropdownSystemsModel());
    cpDropdownUnitsTypesParentModel =
        createModel(context, () => CpDropdownUnitsTypesParentModel());
    cpDropdownUnitsTypesModel =
        createModel(context, () => CpDropdownUnitsTypesModel());
    cpInputTextCodeModel = createModel(context, () => CpInputTextModel());
    cpInputTextDescriptionModel =
        createModel(context, () => CpInputTextModel());
    cpInputTextAddressCompModel =
        createModel(context, () => CpInputTextModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpNotificationsIconModel.dispose();
    cpDropdownSystemsParentModel.dispose();
    cpDropdownSystemsModel.dispose();
    cpDropdownUnitsTypesParentModel.dispose();
    cpDropdownUnitsTypesModel.dispose();
    cpInputTextCodeModel.dispose();
    cpInputTextDescriptionModel.dispose();
    cpInputTextAddressCompModel.dispose();
    cpMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
