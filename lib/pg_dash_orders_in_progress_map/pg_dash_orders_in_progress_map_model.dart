import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_menu_services_filters/cp_menu_services_filters_widget.dart';
import 'pg_dash_orders_in_progress_map_widget.dart'
    show PgDashOrdersInProgressMapWidget;
import 'package:flutter/material.dart';

class PgDashOrdersInProgressMapModel
    extends FlutterFlowModel<PgDashOrdersInProgressMapWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpMenuServicesFilters component.
  late CpMenuServicesFiltersModel cpMenuServicesFiltersModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpMenuServicesFiltersModel =
        createModel(context, () => CpMenuServicesFiltersModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpMenuModel.dispose();
    cpMenuServicesFiltersModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
