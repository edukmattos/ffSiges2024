import '/components/cp_o_priority_widget.dart';
import '/components/cp_o_statuses_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visits/cp_o_v_processing_card/cp_o_v_processing_card_widget.dart';
import 'cp_o_v_list_item_widget.dart' show CpOVListItemWidget;
import 'package:flutter/material.dart';

class CpOVListItemModel extends FlutterFlowModel<CpOVListItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOPriority component.
  late CpOPriorityModel cpOPriorityModel;
  // Model for cpOStatuses component.
  late CpOStatusesModel cpOStatusesModel;
  // Model for cpOVProcessingCard component.
  late CpOVProcessingCardModel cpOVProcessingCardModel1;
  // Model for cpOVProcessingCard component.
  late CpOVProcessingCardModel cpOVProcessingCardModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOPriorityModel = createModel(context, () => CpOPriorityModel());
    cpOStatusesModel = createModel(context, () => CpOStatusesModel());
    cpOVProcessingCardModel1 =
        createModel(context, () => CpOVProcessingCardModel());
    cpOVProcessingCardModel2 =
        createModel(context, () => CpOVProcessingCardModel());
  }

  @override
  void dispose() {
    cpOPriorityModel.dispose();
    cpOStatusesModel.dispose();
    cpOVProcessingCardModel1.dispose();
    cpOVProcessingCardModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
