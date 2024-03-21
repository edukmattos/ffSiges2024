import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'md_user_available_menu_options_widget.dart'
    show MdUserAvailableMenuOptionsWidget;
import 'package:flutter/material.dart';

class MdUserAvailableMenuOptionsModel
    extends FlutterFlowModel<MdUserAvailableMenuOptionsWidget> {
  ///  Local state fields for this component.

  List<UsersRow> lcsvTeamUsers = [];
  void addToLcsvTeamUsers(UsersRow item) => lcsvTeamUsers.add(item);
  void removeFromLcsvTeamUsers(UsersRow item) => lcsvTeamUsers.remove(item);
  void removeAtIndexFromLcsvTeamUsers(int index) =>
      lcsvTeamUsers.removeAt(index);
  void insertAtIndexInLcsvTeamUsers(int index, UsersRow item) =>
      lcsvTeamUsers.insert(index, item);
  void updateLcsvTeamUsersAtIndex(int index, Function(UsersRow) updateFn) =>
      lcsvTeamUsers[index] = updateFn(lcsvTeamUsers[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? resUsersByTeam;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
