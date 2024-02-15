import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_order_parent_status_card/cp_order_parent_status_card_widget.dart';
import 'cp_order_card_map_list_item_widget.dart'
    show CpOrderCardMapListItemWidget;
import 'package:flutter/material.dart';

class CpOrderCardMapListItemModel
    extends FlutterFlowModel<CpOrderCardMapListItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpOrderParentStatusCard component.
  late CpOrderParentStatusCardModel cpOrderParentStatusCardModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOrderParentStatusCardModel =
        createModel(context, () => CpOrderParentStatusCardModel());
  }

  @override
  void dispose() {
    cpOrderParentStatusCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
