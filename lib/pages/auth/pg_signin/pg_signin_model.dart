import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_input_email/cp_input_email_widget.dart';
import '/pages/components/cp_input_password/cp_input_password_widget.dart';
import 'pg_signin_widget.dart' show PgSigninWidget;
import 'package:flutter/material.dart';

class PgSigninModel extends FlutterFlowModel<PgSigninWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for cpInputEmail component.
  late CpInputEmailModel cpInputEmailModel;
  // Model for cpInputPassword component.
  late CpInputPasswordModel cpInputPasswordModel;
  // Stores action output result for [Backend Call - API (authSignin)] action in Button widget.
  ApiCallResponse? resUserCurrent;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cpInputEmailModel = createModel(context, () => CpInputEmailModel());
    cpInputPasswordModel = createModel(context, () => CpInputPasswordModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cpInputEmailModel.dispose();
    cpInputPasswordModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
