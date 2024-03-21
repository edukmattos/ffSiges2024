import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/user/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import 'dart:async';
import 'pg_o_v_my_team_widget.dart' show PgOVMyTeamWidget;
import 'package:flutter/material.dart';

class PgOVMyTeamModel extends FlutterFlowModel<PgOVMyTeamWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cpDBUserAvailable component.
  late CpDBUserAvailableModel cpDBUserAvailableModel;
  Completer<List<VUsersRow>>? requestCompleter;
  // Model for cpInputText component.
  late CpInputTextModel cpInputTextModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpDBUserAvailableModel =
        createModel(context, () => CpDBUserAvailableModel());
    cpInputTextModel = createModel(context, () => CpInputTextModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpDBUserAvailableModel.dispose();
    cpInputTextModel.dispose();
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
