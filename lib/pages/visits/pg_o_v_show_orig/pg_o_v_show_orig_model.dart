import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_order_visit_asset_show_bottom_nav_bar/cp_order_visit_asset_show_bottom_nav_bar_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_o_card_show/cp_o_card_show_widget.dart';
import '/pages/orders/cp_o_v_show/cp_o_v_show_widget.dart';
import '/pages/user/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/pages/visits/cp_o_v_services_list/cp_o_v_services_list_widget.dart';
import 'dart:async';
import 'pg_o_v_show_orig_widget.dart' show PgOVShowOrigWidget;
import 'package:flutter/material.dart';

class PgOVShowOrigModel extends FlutterFlowModel<PgOVShowOrigWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<VOrdersVisitsAssetsRow>>? requestCompleter2;
  Completer<List<VOrdersVisitsVehiclesRow>>? requestCompleter1;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpOCardShow component.
  late CpOCardShowModel cpOCardShowModel;
  // Model for cpOVShow component.
  late CpOVShowModel cpOVShowModel;
  // Model for cpOrderVisitAssetShowBottomNavBar component.
  late CpOrderVisitAssetShowBottomNavBarModel
      cpOrderVisitAssetShowBottomNavBarModel;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowed;
  // Model for cpOVServicesList component.
  late CpOVServicesListModel cpOVServicesListModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpOCardShowModel = createModel(context, () => CpOCardShowModel());
    cpOVShowModel = createModel(context, () => CpOVShowModel());
    cpOrderVisitAssetShowBottomNavBarModel =
        createModel(context, () => CpOrderVisitAssetShowBottomNavBarModel());
    cpOVServicesListModel = createModel(context, () => CpOVServicesListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpNotificationsIconModel.dispose();
    cpMenuModel.dispose();
    cpDBUserAvailableModel.dispose();
    cpOCardShowModel.dispose();
    cpOVShowModel.dispose();
    cpOrderVisitAssetShowBottomNavBarModel.dispose();
    cpOVServicesListModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
