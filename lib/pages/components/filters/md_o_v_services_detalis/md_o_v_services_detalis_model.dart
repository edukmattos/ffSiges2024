import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visits/cp_o_v_services_list/cp_o_v_services_list_widget.dart';
import 'md_o_v_services_detalis_widget.dart' show MdOVServicesDetalisWidget;
import 'package:flutter/material.dart';

class MdOVServicesDetalisModel
    extends FlutterFlowModel<MdOVServicesDetalisWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOVServicesList component.
  late CpOVServicesListModel cpOVServicesListModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOVServicesListModel = createModel(context, () => CpOVServicesListModel());
  }

  @override
  void dispose() {
    cpOVServicesListModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
