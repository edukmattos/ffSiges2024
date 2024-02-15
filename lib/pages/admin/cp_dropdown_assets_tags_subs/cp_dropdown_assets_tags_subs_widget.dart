import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_dropdown_assets_tags_subs_model.dart';
export 'cp_dropdown_assets_tags_subs_model.dart';

class CpDropdownAssetsTagsSubsWidget extends StatefulWidget {
  const CpDropdownAssetsTagsSubsWidget({
    super.key,
    this.hintText,
    this.initialValue,
  });

  final String? hintText;
  final int? initialValue;

  @override
  State<CpDropdownAssetsTagsSubsWidget> createState() =>
      _CpDropdownAssetsTagsSubsWidgetState();
}

class _CpDropdownAssetsTagsSubsWidgetState
    extends State<CpDropdownAssetsTagsSubsWidget> {
  late CpDropdownAssetsTagsSubsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDropdownAssetsTagsSubsModel());

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

    return FutureBuilder<List<AssetsTagsSubsRow>>(
      future: AssetsTagsSubsTable().queryRows(
        queryFn: (q) => q
            .eq(
              'companyId',
              FFAppState().stUserCurrent.companyId,
            )
            .eq(
              'departmentId',
              FFAppState().stUserCurrent.departmentId,
            )
            .eq(
              'isAvailable',
              true,
            )
            .eq(
              'isDeleted',
              false,
            )
            .order('description', ascending: true),
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
        List<AssetsTagsSubsRow> dropdownAssetsTagsSubsAssetsTagsSubsRowList =
            snapshot.data!;
        return FlutterFlowDropDown<int>(
          controller: _model.dropdownAssetsTagsSubsValueController ??=
              FormFieldController<int>(
            _model.dropdownAssetsTagsSubsValue ??= widget.initialValue,
          ),
          options: List<int>.from(dropdownAssetsTagsSubsAssetsTagsSubsRowList
              .map((e) => e.id)
              .toList()),
          optionLabels: dropdownAssetsTagsSubsAssetsTagsSubsRowList
              .map((e) => e.description)
              .withoutNulls
              .toList(),
          onChanged: (val) =>
              setState(() => _model.dropdownAssetsTagsSubsValue = val),
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
