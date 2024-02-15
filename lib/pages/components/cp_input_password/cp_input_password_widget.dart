import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_input_password_model.dart';
export 'cp_input_password_model.dart';

class CpInputPasswordWidget extends StatefulWidget {
  const CpInputPasswordWidget({
    super.key,
    this.labelText,
  });

  final String? labelText;

  @override
  State<CpInputPasswordWidget> createState() => _CpInputPasswordWidgetState();
}

class _CpInputPasswordWidgetState extends State<CpInputPasswordWidget> {
  late CpInputPasswordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpInputPasswordModel());

    _model.inputPasswordController ??= TextEditingController();
    _model.inputPasswordFocusNode ??= FocusNode();

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

    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: _model.inputPasswordController,
        focusNode: _model.inputPasswordFocusNode,
        autofocus: true,
        autofillHints: const [AutofillHints.password],
        obscureText: !_model.inputPasswordVisibility,
        decoration: InputDecoration(
          labelText: widget.labelText,
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
          suffixIcon: InkWell(
            onTap: () => setState(
              () => _model.inputPasswordVisibility =
                  !_model.inputPasswordVisibility,
            ),
            focusNode: FocusNode(skipTraversal: true),
            child: Icon(
              _model.inputPasswordVisibility
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
        ),
        style: FlutterFlowTheme.of(context).bodyLarge,
        cursorColor: FlutterFlowTheme.of(context).primary,
        validator: _model.inputPasswordControllerValidator.asValidator(context),
      ),
    );
  }
}
