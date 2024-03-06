import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_orders_types_activities/cp_dropdown_orders_types_activities_widget.dart';
import '/pages/visits/cp_o_v_asset_list_card/cp_o_v_asset_list_card_widget.dart';
import 'pg_o_v_asset3_activities_search_widget.dart'
    show PgOVAsset3ActivitiesSearchWidget;
import 'package:flutter/material.dart';

class PgOVAsset3ActivitiesSearchModel
    extends FlutterFlowModel<PgOVAsset3ActivitiesSearchWidget> {
  ///  Local state fields for this page.

  bool lpsvIsExistActivity = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpOVAssetListCard component.
  late CpOVAssetListCardModel cpOVAssetListCardModel;
  // Model for cpDropdownOrdersTypesActivities component.
  late CpDropdownOrdersTypesActivitiesModel
      cpDropdownOrdersTypesActivitiesModel;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersVisitsAssetsActivitiesRow? resOrderVisitAssetActivityAdded;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpOVAssetListCardModel =
        createModel(context, () => CpOVAssetListCardModel());
    cpDropdownOrdersTypesActivitiesModel =
        createModel(context, () => CpDropdownOrdersTypesActivitiesModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpOVAssetListCardModel.dispose();
    cpDropdownOrdersTypesActivitiesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
