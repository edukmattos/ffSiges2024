import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import 'pg_assets_search_widget.dart' show PgAssetsSearchWidget;
import 'package:flutter/material.dart';

class PgAssetsSearchModel extends FlutterFlowModel<PgAssetsSearchWidget> {
  ///  Local state fields for this page.

  DtAssetStruct? lpsvAssets;
  void updateLpsvAssetsStruct(Function(DtAssetStruct) updateFn) =>
      updateFn(lpsvAssets ??= DtAssetStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpInputTextSearch.
  late CpInputTextModel cpInputTextSearchModel;
  // Stores action output result for [Backend Call - API (assetsSearch)] action in IconButton widget.
  ApiCallResponse? resAssets;
  var assetQrBarCode = '';
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpInputTextSearchModel = createModel(context, () => CpInputTextModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpInputTextSearchModel.dispose();
    cpMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
