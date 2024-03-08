import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cp_input_date_disabled_model.dart';
export 'cp_input_date_disabled_model.dart';

class CpInputDateDisabledWidget extends StatefulWidget {
  const CpInputDateDisabledWidget({
    super.key,
    this.initialValue,
    this.labelText,
    this.hintText,
  });

  final String? initialValue;
  final String? labelText;
  final DateTime? hintText;

  @override
  State<CpInputDateDisabledWidget> createState() =>
      _CpInputDateDisabledWidgetState();
}

class _CpInputDateDisabledWidgetState extends State<CpInputDateDisabledWidget> {
  late CpInputDateDisabledModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpInputDateDisabledModel());

    _model.inputTextController ??=
        TextEditingController(text: widget.initialValue);
    _model.inputTextFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _model.inputTextController,
      focusNode: _model.inputTextFocusNode,
      autofillHints: const [AutofillHints.name],
      textCapitalization: TextCapitalization.words,
      readOnly: true,
      obscureText: false,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: FlutterFlowTheme.of(context).bodyLarge,
        hintText: dateTimeFormat('d/M H:mm', widget.hintText),
        hintStyle: FlutterFlowTheme.of(context).labelMedium,
        errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Readex Pro',
              color: FlutterFlowTheme.of(context).error,
            ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).alternate,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primary,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        filled: true,
        fillColor: FlutterFlowTheme.of(context).primaryBackground,
        contentPadding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 12.0),
      ),
      style: FlutterFlowTheme.of(context).bodyLarge,
      minLines: 1,
      keyboardType: TextInputType.datetime,
      cursorColor: FlutterFlowTheme.of(context).primary,
      validator: _model.inputTextControllerValidator.asValidator(context),
    );
  }
}
