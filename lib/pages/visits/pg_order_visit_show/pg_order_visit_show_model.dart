import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_order_visit_asset_show_bottom_nav_bar/cp_order_visit_asset_show_bottom_nav_bar_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_order_card_show/cp_order_card_show_widget.dart';
import '/pages/visits/cp_order_visit_card2_show/cp_order_visit_card2_show_widget.dart';
import '/pages/visits/cp_order_visit_services_list/cp_order_visit_services_list_widget.dart';
import 'dart:async';
import 'pg_order_visit_show_widget.dart' show PgOrderVisitShowWidget;
import 'package:flutter/material.dart';

class PgOrderVisitShowModel extends FlutterFlowModel<PgOrderVisitShowWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<VOrdersVisitsRow>>? requestCompleter;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpOrderCardShow component.
  late CpOrderCardShowModel cpOrderCardShowModel;
  // Model for cpOrderVisitCard2Show component.
  late CpOrderVisitCard2ShowModel cpOrderVisitCard2ShowModel;
  // Model for cpOrderVisitAssetShowBottomNavBar component.
  late CpOrderVisitAssetShowBottomNavBarModel
      cpOrderVisitAssetShowBottomNavBarModel;
  // Model for cpOrderVisitServicesList component.
  late CpOrderVisitServicesListModel cpOrderVisitServicesListModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpOrderCardShowModel = createModel(context, () => CpOrderCardShowModel());
    cpOrderVisitCard2ShowModel =
        createModel(context, () => CpOrderVisitCard2ShowModel());
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
    cpOrderVisitCard2ShowModel.dispose();
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
