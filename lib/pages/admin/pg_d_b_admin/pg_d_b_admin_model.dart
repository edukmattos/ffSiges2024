import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/user/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'dart:async';
import 'pg_d_b_admin_widget.dart' show PgDBAdminWidget;
import 'package:flutter/material.dart';

class PgDBAdminModel extends FlutterFlowModel<PgDBAdminWidget> {
  ///  Local state fields for this page.

  String lpsvOrdersOrVisits = 'orders';

  int? lpsvOrderStatusId;

  bool? lpsvIsParent = true;

  int lpsvVisitsProcessingId = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<VUsersRow>>? requestCompleter;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpInputText component.
  late CpInputTextModel cpInputTextModel;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<VOrdersRow>? resOPSearch;
  // Stores action output result for [Backend Call - API (ordersByParentId)] action in IconButton widget.
  ApiCallResponse? apiResult2s8;
  // Stores action output result for [Action Block - abGuardian] action in IconButton widget.
  bool? isAllowedOPnew;
  // Model for cpMenu component.
  late CpMenuModel cpMenuModel;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpInputTextModel = createModel(context, () => CpInputTextModel());
    cpMenuModel = createModel(context, () => CpMenuModel());
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpDBUserAvailableModel.dispose();
    cpInputTextModel.dispose();
    cpMenuModel.dispose();
    cpNotificationsIconModel.dispose();
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
