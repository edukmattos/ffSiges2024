import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_orders_types_activities/cp_dropdown_orders_types_activities_widget.dart';
import '/pages/orders/cp_order_visit_asset_list_item_card/cp_order_visit_asset_list_item_card_widget.dart';
import 'dart:async';
import 'pg_order_visit_asset3_activities_search_widget.dart'
    show PgOrderVisitAsset3ActivitiesSearchWidget;
import 'package:flutter/material.dart';

class PgOrderVisitAsset3ActivitiesSearchModel
    extends FlutterFlowModel<PgOrderVisitAsset3ActivitiesSearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpOrderVisitAssetListItemCard component.
  late CpOrderVisitAssetListItemCardModel cpOrderVisitAssetListItemCardModel;
  Completer<List<VOrdersVisitsAssetsActivitiesRow>>? requestCompleter;
  // Model for cpDropdownOrdersTypesActivities component.
  late CpDropdownOrdersTypesActivitiesModel
      cpDropdownOrdersTypesActivitiesModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOrderVisitAssetListItemCardModel =
        createModel(context, () => CpOrderVisitAssetListItemCardModel());
    cpDropdownOrdersTypesActivitiesModel =
        createModel(context, () => CpDropdownOrdersTypesActivitiesModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpOrderVisitAssetListItemCardModel.dispose();
    cpDropdownOrdersTypesActivitiesModel.dispose();
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
