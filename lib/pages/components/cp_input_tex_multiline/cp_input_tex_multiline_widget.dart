import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_input_tex_multiline_model.dart';
export 'cp_input_tex_multiline_model.dart';

class CpInputTexMultilineWidget extends StatefulWidget {
  const CpInputTexMultilineWidget({
    super.key,
    this.initialValue,
    this.labelText,
    bool? readOnly,
    this.hintText,
  }) : readOnly = readOnly ?? true;

  final String? initialValue;
  final String? labelText;
  final bool readOnly;
  final String? hintText;

  @override
  State<CpInputTexMultilineWidget> createState() =>
      _CpInputTexMultilineWidgetState();
}

class _CpInputTexMultilineWidgetState extends State<CpInputTexMultilineWidget> {
  late CpInputTexMultilineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpInputTexMultilineModel());

    _model.inputTextMultineController ??=
        TextEditingController(text: widget.initialValue);
    _model.inputTextMultineFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return TextFormField(
      controller: _model.inputTextMultineController,
      focusNode: _model.inputTextMultineFocusNode,
      autofillHints: const [AutofillHints.name],
      textCapitalization: TextCapitalization.words,
      readOnly: widget.readOnly,
      obscureText: false,
      decoration: InputDecoration(
        labelText: widget.labelText,
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
        contentPadding: const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 12.0),
      ),
      style: FlutterFlowTheme.of(context).bodyLarge,
      maxLines: 10,
      minLines: 2,
      cursorColor: FlutterFlowTheme.of(context).primary,
      validator:
          _model.inputTextMultineControllerValidator.asValidator(context),
    );
  }
}
