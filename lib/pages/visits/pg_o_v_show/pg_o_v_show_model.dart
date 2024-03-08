import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_order_visit_asset_show_bottom_nav_bar/cp_order_visit_asset_show_bottom_nav_bar_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_o_v_show/cp_o_v_show_widget.dart';
import '/pages/orders/cp_order_card_show/cp_order_card_show_widget.dart';
import '/pages/visits/cp_order_visit_services_list/cp_order_visit_services_list_widget.dart';
import 'dart:async';
import 'pg_o_v_show_widget.dart' show PgOVShowWidget;
import 'package:flutter/material.dart';

class PgOVShowModel extends FlutterFlowModel<PgOVShowWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<VOrdersVisitsRow>>? requestCompleter;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpOrderCardShow component.
  late CpOrderCardShowModel cpOrderCardShowModel;
  // Model for cpOVShow component.
  late CpOVShowModel cpOVShowModel;
  // Model for cpOrderVisitAssetShowBottomNavBar component.
  late CpOrderVisitAssetShowBottomNavBarModel
      cpOrderVisitAssetShowBottomNavBarModel;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowed;
  // Model for cpOrderVisitServicesList component.
  late CpOrderVisitServicesListModel cpOrderVisitServicesListModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpOrderCardShowModel = createModel(context, () => CpOrderCardShowModel());
    cpOVShowModel = createModel(context, () => CpOVShowModel());
    cpOrderVisitAssetShowBottomNavBarModel =
        createModel(context, () => CpOrderVisitAssetShowBottomNavBarModel());
    cpOrderVisitServicesListModel =
        createModel(context, () => CpOrderVisitServicesListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpNotificationsIconModel.dispose();
    cpMenuModel.dispose();
    cpOrderCardShowModel.dispose();
    cpOVShowModel.dispose();
    cpOrderVisitAssetShowBottomNavBarModel.dispose();
    cpOrderVisitServicesListModel.dispose();
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
