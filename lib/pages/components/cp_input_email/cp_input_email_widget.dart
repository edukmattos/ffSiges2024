import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cp_input_email_model.dart';
export 'cp_input_email_model.dart';

class CpInputEmailWidget extends StatefulWidget {
  const CpInputEmailWidget({super.key});

  @override
  State<CpInputEmailWidget> createState() => _CpInputEmailWidgetState();
}

class _CpInputEmailWidgetState extends State<CpInputEmailWidget> {
  late CpInputEmailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpInputEmailModel());

    _model.inputEmailController ??= TextEditingController();
    _model.inputEmailFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: _model.inputEmailController,
        focusNode: _model.inputEmailFocusNode,
        autofocus: true,
        autofillHints: const [AutofillHints.email],
        obscureText: false,
        decoration: InputDecoration(
          labelText: 'E-mail',
          labelStyle: FlutterFlowTheme.of(context).labelLarge,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).alternate,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          filled: true,
          fillColor: FlutterFlowTheme.of(context).primaryBackground,
        ),
        style: FlutterFlowTheme.of(context).bodyLarge,
        minLines: 1,
        keyboardType: TextInputType.emailAddress,
        cursorColor: FlutterFlowTheme.of(context).primary,
        validator: _model.inputEmailControllerValidator.asValidator(context),
      ),
    );
  }
}
