import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'cp_input_integer_model.dart';
export 'cp_input_integer_model.dart';

class CpInputIntegerWidget extends StatefulWidget {
  const CpInputIntegerWidget({
    super.key,
    this.initialValue,
    this.labelText,
    bool? isReadOnly,
  }) : isReadOnly = isReadOnly ?? false;

  final int? initialValue;
  final String? labelText;
  final bool isReadOnly;

  @override
  State<CpInputIntegerWidget> createState() => _CpInputIntegerWidgetState();
}

class _CpInputIntegerWidgetState extends State<CpInputIntegerWidget> {
  late CpInputIntegerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpInputIntegerModel());

    _model.inputIntegerController ??=
        TextEditingController(text: widget.initialValue?.toString());
    _model.inputIntegerFocusNode ??= FocusNode();

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
      controller: _model.inputIntegerController,
      focusNode: _model.inputIntegerFocusNode,
      onChanged: (_) => EasyDebounce.debounce(
        '_model.inputIntegerController',
        const Duration(milliseconds: 2000),
        () => setState(() {}),
      ),
      textCapitalization: TextCapitalization.none,
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
        suffixIcon: _model.inputIntegerController!.text.isNotEmpty
            ? InkWell(
                onTap: () async {
                  _model.inputIntegerController?.clear();
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
      keyboardType: TextInputType.number,
      cursorColor: FlutterFlowTheme.of(context).primary,
      validator: _model.inputIntegerControllerValidator.asValidator(context),
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
    );
  }
}
