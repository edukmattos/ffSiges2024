import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_input_text_disabled_model.dart';
export 'cp_input_text_disabled_model.dart';

class CpInputTextDisabledWidget extends StatefulWidget {
  const CpInputTextDisabledWidget({
    super.key,
    this.initialValue,
    this.labelText,
  });

  final String? initialValue;
  final String? labelText;

  @override
  State<CpInputTextDisabledWidget> createState() =>
      _CpInputTextDisabledWidgetState();
}

class _CpInputTextDisabledWidgetState extends State<CpInputTextDisabledWidget> {
  late CpInputTextDisabledModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpInputTextDisabledModel());

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
    context.watch<FFAppState>();

    return TextFormField(
      controller: _model.inputTextController,
      focusNode: _model.inputTextFocusNode,
      onChanged: (_) => EasyDebounce.debounce(
        '_model.inputTextController',
        const Duration(milliseconds: 2000),
        () => setState(() {}),
      ),
      autofillHints: const [AutofillHints.name],
      textCapitalization: TextCapitalization.words,
      obscureText: false,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: FlutterFlowTheme.of(context).bodyLarge,
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
        suffixIcon: _model.inputTextController!.text.isNotEmpty
            ? InkWell(
                onTap: () async {
                  _model.inputTextController?.clear();
                  setState(() {});
                },
                child: const Icon(
                  Icons.clear,
                  color: Color(0xFF757575),
                  size: 22.0,
                ),
              )
            : null,
      ),
      style: FlutterFlowTheme.of(context).bodyLarge,
      minLines: 1,
      cursorColor: FlutterFlowTheme.of(context).primary,
      validator: _model.inputTextControllerValidator.asValidator(context),
    );
  }
}
