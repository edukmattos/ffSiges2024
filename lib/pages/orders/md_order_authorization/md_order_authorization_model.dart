import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_leader_teams_selected/cp_dropdown_leader_teams_selected_widget.dart';
import '/pages/components/cp_dropdown_teams_department/cp_dropdown_teams_department_widget.dart';
import 'md_order_authorization_widget.dart' show MdOrderAuthorizationWidget;
import 'package:flutter/material.dart';

class MdOrderAuthorizationModel
    extends FlutterFlowModel<MdOrderAuthorizationWidget> {
  ///  Local state fields for this component.

  int lcsvStepForm = 1;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for cpDropdownTeamsDepartment component.
  late CpDropdownTeamsDepartmentModel cpDropdownTeamsDepartmentModel;
  // Model for cpDropdownLeaderTeamsSelected component.
  late CpDropdownLeaderTeamsSelectedModel cpDropdownLeaderTeamsSelectedModel;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrdersRow>? resOrderAuthorized;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpDropdownTeamsDepartmentModel =
        createModel(context, () => CpDropdownTeamsDepartmentModel());
    cpDropdownLeaderTeamsSelectedModel =
        createModel(context, () => CpDropdownLeaderTeamsSelectedModel());
  }

  @override
  void dispose() {
    cpDropdownTeamsDepartmentModel.dispose();
    cpDropdownLeaderTeamsSelectedModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
