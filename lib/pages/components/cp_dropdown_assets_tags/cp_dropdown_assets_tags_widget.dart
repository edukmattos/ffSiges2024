import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'cp_dropdown_assets_tags_model.dart';
export 'cp_dropdown_assets_tags_model.dart';

class CpDropdownAssetsTagsWidget extends StatefulWidget {
  const CpDropdownAssetsTagsWidget({
    super.key,
    this.hintText,
    this.initialValue,
  });

  final String? hintText;
  final int? initialValue;

  @override
  State<CpDropdownAssetsTagsWidget> createState() =>
      _CpDropdownAssetsTagsWidgetState();
}

class _CpDropdownAssetsTagsWidgetState
    extends State<CpDropdownAssetsTagsWidget> {
  late CpDropdownAssetsTagsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDropdownAssetsTagsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AssetsTagsRow>>(
      future: AssetsTagsTable().queryRows(
        queryFn: (q) => q
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
        List<AssetsTagsRow> dropdownAssetsTagsAssetsTagsRowList =
            snapshot.data!;
        return FlutterFlowDropDown<int>(
          controller: _model.dropdownAssetsTagsValueController ??=
              FormFieldController<int>(
            _model.dropdownAssetsTagsValue ??= widget.initialValue,
          ),
          options: List<int>.from(
              dropdownAssetsTagsAssetsTagsRowList.map((e) => e.id).toList()),
          optionLabels: dropdownAssetsTagsAssetsTagsRowList
              .map((e) => e.description)
              .withoutNulls
              .toList(),
          onChanged: (val) =>
              setState(() => _model.dropdownAssetsTagsValue = val),
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
