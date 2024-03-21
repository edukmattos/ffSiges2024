import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'pg_my_profile_vehicle_list_widget.dart'
    show PgMyProfileVehicleListWidget;
import 'package:flutter/material.dart';

class PgMyProfileVehicleListModel
    extends FlutterFlowModel<PgMyProfileVehicleListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<VehiclesRow>>? requestCompleter;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
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
