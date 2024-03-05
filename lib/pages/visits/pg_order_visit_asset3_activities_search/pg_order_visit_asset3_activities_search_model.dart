import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_orders_types_activities/cp_dropdown_orders_types_activities_widget.dart';
import 'dart:async';
import 'pg_order_visit_asset3_activities_search_widget.dart'
    show PgOrderVisitAsset3ActivitiesSearchWidget;
import 'package:flutter/material.dart';

class PgOrderVisitAsset3ActivitiesSearchModel
    extends FlutterFlowModel<PgOrderVisitAsset3ActivitiesSearchWidget> {
  ///  Local state fields for this page.

  List<DtVOrderVisitAssetActivityStruct> lpsvActivities = [];
  void addToLpsvActivities(DtVOrderVisitAssetActivityStruct item) =>
      lpsvActivities.add(item);
  void removeFromLpsvActivities(DtVOrderVisitAssetActivityStruct item) =>
      lpsvActivities.remove(item);
  void removeAtIndexFromLpsvActivities(int index) =>
      lpsvActivities.removeAt(index);
  void insertAtIndexInLpsvActivities(
          int index, DtVOrderVisitAssetActivityStruct item) =>
      lpsvActivities.insert(index, item);
  void updateLpsvActivitiesAtIndex(
          int index, Function(DtVOrderVisitAssetActivityStruct) updateFn) =>
      lpsvActivities[index] = updateFn(lpsvActivities[index]);

  bool lpsvIsExistActivity = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<VOrdersVisitsAssetsActivitiesRow>>? requestCompleter;
  // Model for cpDropdownOrdersTypesActivities component.
  late CpDropdownOrdersTypesActivitiesModel
      cpDropdownOrdersTypesActivitiesModel;
  // Stores action output result for [Backend Call - API (activitiesByOrderVisitAssetId)] action in Button widget.
  ApiCallResponse? resOrderVisitAssetActivities;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersVisitsAssetsActivitiesRow? resOrderVisitAssetActivityAdded;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpDropdownOrdersTypesActivitiesModel =
        createModel(context, () => CpDropdownOrdersTypesActivitiesModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
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
