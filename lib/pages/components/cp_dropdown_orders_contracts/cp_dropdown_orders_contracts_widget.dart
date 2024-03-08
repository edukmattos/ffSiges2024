import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_dropdown_orders_contracts_model.dart';
export 'cp_dropdown_orders_contracts_model.dart';

class CpDropdownOrdersContractsWidget extends StatefulWidget {
  const CpDropdownOrdersContractsWidget({
    super.key,
    this.hintText,
  });

  final String? hintText;

  @override
  State<CpDropdownOrdersContractsWidget> createState() =>
      _CpDropdownOrdersContractsWidgetState();
}

class _CpDropdownOrdersContractsWidgetState
    extends State<CpDropdownOrdersContractsWidget> {
  late CpDropdownOrdersContractsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDropdownOrdersContractsModel());

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

    return FutureBuilder<List<VContractsRow>>(
      future: VContractsTable().queryRows(
        queryFn: (q) => q
            .eq(
              'clientDepartmentId',
              valueOrDefault<int>(
                FFAppState().asUserCurrent.departmentId,
                1,
              ),
            )
            .order('providerCompanyDescription', ascending: true),
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
        List<VContractsRow> dropdownOrdersContractsVContractsRowList =
            snapshot.data!;
        return FlutterFlowDropDown<int>(
          controller: _model.dropdownOrdersContractsValueController ??=
              FormFieldController<int>(
            _model.dropdownOrdersContractsValue ??= 0,
          ),
          options: List<int>.from(dropdownOrdersContractsVContractsRowList
              .map((e) => valueOrDefault<int>(
                    e.id,
                    1,
                  ))
              .toList()),
          optionLabels: dropdownOrdersContractsVContractsRowList
              .map((e) => valueOrDefault<String>(
                    e.contractDescription,
                    'contractDescription',
                  ))
              .toList(),
          onChanged: (val) =>
              setState(() => _model.dropdownOrdersContractsValue = val),
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
