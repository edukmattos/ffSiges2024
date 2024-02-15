import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import 'cp_users_list_item_widget.dart' show CpUsersListItemWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpUsersListItemModel extends FlutterFlowModel<CpUsersListItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cpUserPicProfile component.
  late CpUserPicProfileModel cpUserPicProfileModel;
  // State field(s) for Switch widget.
  bool? switchValue;
  Completer<List<VUsersRow>>? requestCompleter;
  // Stores action output result for [Backend Call - API (usersLeaderByTeamId)] action in Switch widget.
  ApiCallResponse? resUsersLeadersTeamSelected;
  // Stores action output result for [Backend Call - Update Row] action in Switch widget.
  List<UsersRow>? resLeader;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpUserPicProfileModel = createModel(context, () => CpUserPicProfileModel());
  }

  @override
  void dispose() {
    cpUserPicProfileModel.dispose();
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
