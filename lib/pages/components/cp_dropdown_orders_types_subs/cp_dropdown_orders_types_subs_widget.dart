import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_dropdown_orders_types_subs_model.dart';
export 'cp_dropdown_orders_types_subs_model.dart';

class CpDropdownOrdersTypesSubsWidget extends StatefulWidget {
  const CpDropdownOrdersTypesSubsWidget({
    super.key,
    this.hintText,
    this.initialValue,
  });

  final String? hintText;
  final int? initialValue;

  @override
  State<CpDropdownOrdersTypesSubsWidget> createState() =>
      _CpDropdownOrdersTypesSubsWidgetState();
}

class _CpDropdownOrdersTypesSubsWidgetState
    extends State<CpDropdownOrdersTypesSubsWidget> {
  late CpDropdownOrdersTypesSubsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDropdownOrdersTypesSubsModel());

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

    return FutureBuilder<ApiCallResponse>(
      future: ApiOrdersTypesSubGroup.ordersTypesSubsByDepartmentCall.call(
        departmentId: FFAppState().asUserCurrent.departmentId,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        final dropdownOrdersTypesSubsOrdersTypesSubsByDepartmentResponse =
            snapshot.data!;
        return FlutterFlowDropDown<int>(
          controller: _model.dropdownOrdersTypesSubsValueController ??=
              FormFieldController<int>(
            _model.dropdownOrdersTypesSubsValue ??= widget.initialValue,
          ),
          options: List<int>.from(
              ApiOrdersTypesSubGroup.ordersTypesSubsByDepartmentCall.id(
            dropdownOrdersTypesSubsOrdersTypesSubsByDepartmentResponse.jsonBody,
          )!),
          optionLabels: ApiOrdersTypesSubGroup.ordersTypesSubsByDepartmentCall
              .description(
            dropdownOrdersTypesSubsOrdersTypesSubsByDepartmentResponse.jsonBody,
          )!,
          onChanged: (val) =>
              setState(() => _model.dropdownOrdersTypesSubsValue = val),
          width: double.infinity,
          height: 48.0,
          searchHintTextStyle: FlutterFlowTheme.of(context).bodyLarge,
          searchTextStyle: FlutterFlowTheme.of(context).bodyMedium,
          textStyle: FlutterFlowTheme.of(context).bodyLarge,
          hintText: widget.hintText,
          searchHintText: widget.hintText,
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
          fillColor: FlutterFlowTheme.of(context).primaryBackground,
          elevation: 2.0,
          borderColor: FlutterFlowTheme.of(context).alternate,
          borderWidth: 2.0,
          borderRadius: 8.0,
          margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
          hidesUnderline: true,
          isOverButton: true,
          isSearchable: true,
          isMultiSelect: false,
        );
      },
    );
  }
}
