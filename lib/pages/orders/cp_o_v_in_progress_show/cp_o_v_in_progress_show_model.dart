import '/components/cp_o_priority_widget.dart';
import '/components/cp_o_statuses_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_o_v_in_progress_show_widget.dart' show CpOVInProgressShowWidget;
import 'package:flutter/material.dart';

class CpOVInProgressShowModel
    extends FlutterFlowModel<CpOVInProgressShowWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOPriority component.
  late CpOPriorityModel cpOPriorityModel;
  // Model for cpOStatuses component.
  late CpOStatusesModel cpOStatusesModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOPriorityModel = createModel(context, () => CpOPriorityModel());
    cpOStatusesModel = createModel(context, () => CpOStatusesModel());
  }

  @override
  void dispose() {
    cpOPriorityModel.dispose();
    cpOStatusesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
