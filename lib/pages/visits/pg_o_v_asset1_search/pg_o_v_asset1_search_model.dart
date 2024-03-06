import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import 'dart:async';
import 'pg_o_v_asset1_search_widget.dart' show PgOVAsset1SearchWidget;
import 'package:flutter/material.dart';

class PgOVAsset1SearchModel extends FlutterFlowModel<PgOVAsset1SearchWidget> {
  ///  Local state fields for this page.

  int lpsvAppPageId = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpDropdownUnits component.
  late CpDropdownUnitsModel cpDropdownUnitsModel;
  // Model for cpInputTextSearch.
  late CpInputTextModel cpInputTextSearchModel;
  // Stores action output result for [Backend Call - API (assetsSearch)] action in IconButton widget.
  ApiCallResponse? resAssets;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Action Block - abOrderVisitAssetIsExist] action in cpAssetListItemCard widget.
  bool? resOrderVisitAssetIsExist;
  // Stores action output result for [Backend Call - Insert Row] action in cpAssetListItemCard widget.
  OrdersVisitsAssetsRow? resOrderVisitAssetAdded;
  // Stores action output result for [Backend Call - API (idByvisitIdNassetId)] action in cpAssetListItemCard widget.
  ApiCallResponse? resOrderVisitAssetExist10;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpDropdownUnitsModel = createModel(context, () => CpDropdownUnitsModel());
    cpInputTextSearchModel = createModel(context, () => CpInputTextModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpDropdownUnitsModel.dispose();
    cpInputTextSearchModel.dispose();
    cpMenuModel.dispose();
    cpNotificationsIconModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
