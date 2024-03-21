import '/backend/supabase/supabase.dart';
import '/components/cp_results_no_found_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/user/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'dart:async';
import 'pg_my_team_copy_widget.dart' show PgMyTeamCopyWidget;
import 'package:flutter/material.dart';

class PgMyTeamCopyModel extends FlutterFlowModel<PgMyTeamCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<VOrdersVisitsTeamsRow>>? requestCompleter2;
  Completer<List<VUsersRow>>? requestCompleter3;
  Completer<List<VUsersRow>>? requestCompleter4;
  Completer<List<VUsersRow>>? requestCompleter1;
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  // Model for cpInputText component.
  late CpInputTextModel cpInputTextModel;
  // Model for cpResultsNoFound component.
  late CpResultsNoFoundModel cpResultsNoFoundModel;
  // Model for cpNotificationsIcon component.
  late CpNotificationsIconModel cpNotificationsIconModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpInputTextModel = createModel(context, () => CpInputTextModel());
    cpResultsNoFoundModel = createModel(context, () => CpResultsNoFoundModel());
    cpNotificationsIconModel =
        createModel(context, () => CpNotificationsIconModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpDBUserAvailableModel.dispose();
    cpInputTextModel.dispose();
    cpResultsNoFoundModel.dispose();
    cpNotificationsIconModel.dispose();
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

  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter4?.isCompleted ?? false;
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
