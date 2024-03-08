import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visits/cp_order_visit_services_list/cp_order_visit_services_list_widget.dart';
import 'md_o_v_services_detalis_widget.dart' show MdOVServicesDetalisWidget;
import 'package:flutter/material.dart';

class MdOVServicesDetalisModel
    extends FlutterFlowModel<MdOVServicesDetalisWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOrderVisitServicesList component.
  late CpOrderVisitServicesListModel cpOrderVisitServicesListModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOrderVisitServicesListModel =
        createModel(context, () => CpOrderVisitServicesListModel());
  }

  @override
  void dispose() {
    cpOrderVisitServicesListModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
