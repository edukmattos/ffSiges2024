import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/cp_dropdown_assets_tags_subs/cp_dropdown_assets_tags_subs_widget.dart';
import '/pages/components/cp_dropdown_assets_statuses/cp_dropdown_assets_statuses_widget.dart';
import '/pages/components/cp_dropdown_assets_tags/cp_dropdown_assets_tags_widget.dart';
import '/pages/components/cp_dropdown_units/cp_dropdown_units_widget.dart';
import '/pages/components/cp_input_tex_multiline/cp_input_tex_multiline_widget.dart';
import '/pages/visits/cp_o_v_asset_list_card/cp_o_v_asset_list_card_widget.dart';
import 'dart:async';
import 'pg_o_v_asset_moving_widget.dart' show PgOVAssetMovingWidget;
import 'package:flutter/material.dart';

class PgOVAssetMovingModel extends FlutterFlowModel<PgOVAssetMovingWidget> {
  ///  Local state fields for this page.

  bool lpsvSubmitAvailable = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for cpOVAssetListCard component.
  late CpOVAssetListCardModel cpOVAssetListCardModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  Completer<List<OrdersVisitsAssetsRow>>? requestCompleter;
  // Model for cpDropdownUnits component.
  late CpDropdownUnitsModel cpDropdownUnitsModel;
  // Model for cpDropdownAssetsTags component.
  late CpDropdownAssetsTagsModel cpDropdownAssetsTagsModel;
  // Model for cpDropdownAssetsTagsSubs component.
  late CpDropdownAssetsTagsSubsModel cpDropdownAssetsTagsSubsModel;
  // Model for cpDropdownAssetsStatuses component.
  late CpDropdownAssetsStatusesModel cpDropdownAssetsStatusesModel;
  // Model for cpInputTexMultiline component.
  late CpInputTexMultilineModel cpInputTexMultilineModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOVAssetListCardModel =
        createModel(context, () => CpOVAssetListCardModel());
    cpDropdownUnitsModel = createModel(context, () => CpDropdownUnitsModel());
    cpDropdownAssetsTagsModel =
        createModel(context, () => CpDropdownAssetsTagsModel());
    cpDropdownAssetsTagsSubsModel =
        createModel(context, () => CpDropdownAssetsTagsSubsModel());
    cpDropdownAssetsStatusesModel =
        createModel(context, () => CpDropdownAssetsStatusesModel());
    cpInputTexMultilineModel =
        createModel(context, () => CpInputTexMultilineModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpOVAssetListCardModel.dispose();
    cpDropdownUnitsModel.dispose();
    cpDropdownAssetsTagsModel.dispose();
    cpDropdownAssetsTagsSubsModel.dispose();
    cpDropdownAssetsStatusesModel.dispose();
    cpInputTexMultilineModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
