import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visits/cp_o_v_asset_list_card/cp_o_v_asset_list_card_widget.dart';
import 'pg_o_v_asset_approved_widget.dart' show PgOVAssetApprovedWidget;
import 'package:flutter/material.dart';

class PgOVAssetApprovedModel extends FlutterFlowModel<PgOVAssetApprovedWidget> {
  ///  Local state fields for this page.

  bool lpsvSubmitAvailable = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpOVAssetListCard component.
  late CpOVAssetListCardModel cpOVAssetListCardModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOVAssetListCardModel =
        createModel(context, () => CpOVAssetListCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpOVAssetListCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
