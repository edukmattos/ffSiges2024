import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_dropdown_teams/cp_dropdown_teams_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import 'pg_signup_profile_widget.dart' show PgSignupProfileWidget;
import 'package:flutter/material.dart';

class PgSignupProfileModel extends FlutterFlowModel<PgSignupProfileWidget> {
  ///  Local state fields for this page.

  String lspvFileName = '';

  String lspvFilePath = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for cpInputTextNameFull.
  late CpInputTextModel cpInputTextNameFullModel;
  // Model for cpInputTextNameShort.
  late CpInputTextModel cpInputTextNameShortModel;
  // Model for cpDropdownTeams component.
  late CpDropdownTeamsModel cpDropdownTeamsModel;
  // Stores action output result for [Backend Call - API (teamsById)] action in Button-Login widget.
  ApiCallResponse? resTeamCurrent;
  // Stores action output result for [Custom Action - caFcmToken] action in Button-Login widget.
  String? resFcmToken;
  // Stores action output result for [Backend Call - API (authLogout)] action in Button-Login widget.
  ApiCallResponse? apiResult2po;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpInputTextNameFullModel = createModel(context, () => CpInputTextModel());
    cpInputTextNameShortModel = createModel(context, () => CpInputTextModel());
    cpDropdownTeamsModel = createModel(context, () => CpDropdownTeamsModel());

    cpInputTextNameFullModel.inputTextControllerValidator =
        _formTextFieldValidator1;
    cpInputTextNameShortModel.inputTextControllerValidator =
        _formTextFieldValidator2;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpInputTextNameFullModel.dispose();
    cpInputTextNameShortModel.dispose();
    cpDropdownTeamsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }
}
