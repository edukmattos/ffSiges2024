import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import 'dart:async';
import 'pg_order_parent_search_by_unit_widget.dart'
    show PgOrderParentSearchByUnitWidget;
import 'package:flutter/material.dart';

class PgOrderParentSearchByUnitModel
    extends FlutterFlowModel<PgOrderParentSearchByUnitWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpInputTextSearch.
  late CpInputTextModel cpInputTextSearchModel;
  // Stores action output result for [Backend Call - API (searchRequestedServicesByUnitId)] action in IconButton widget.
  ApiCallResponse? resOrdersParents;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpInputTextSearchModel = createModel(context, () => CpInputTextModel());
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpInputTextSearchModel.dispose();
    cpNotificationsIconModel.dispose();
    cpMenuModel.dispose();
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
