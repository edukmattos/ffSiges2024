import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_email/cp_input_email_widget.dart';
import '/pages/components/cp_input_password/cp_input_password_widget.dart';
import 'pg_signup_email_password_widget.dart' show PgSignupEmailPasswordWidget;
import 'package:flutter/material.dart';

class PgSignupEmailPasswordModel
    extends FlutterFlowModel<PgSignupEmailPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for cpInputEmail component.
  late CpInputEmailModel cpInputEmailModel;
  // Model for cpInputPassword.
  late CpInputPasswordModel cpInputPasswordModel;
  // Model for cpInputPasswordConfirm.
  late CpInputPasswordModel cpInputPasswordConfirmModel;
  // Stores action output result for [Backend Call - API (authSignup)] action in Button widget.
  ApiCallResponse? resUserAdded;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  UsersRow? resSupaUserAdded;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpInputEmailModel = createModel(context, () => CpInputEmailModel());
    cpInputPasswordModel = createModel(context, () => CpInputPasswordModel());
    cpInputPasswordConfirmModel =
        createModel(context, () => CpInputPasswordModel());

    cpInputEmailModel.inputEmailControllerValidator = _formTextFieldValidator1;
    cpInputPasswordModel.inputPasswordControllerValidator =
        _formTextFieldValidator2;
    cpInputPasswordConfirmModel.inputPasswordControllerValidator =
        _formTextFieldValidator3;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpInputEmailModel.dispose();
    cpInputPasswordModel.dispose();
    cpInputPasswordConfirmModel.dispose();
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

  String? _formTextFieldValidator3(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }
}
