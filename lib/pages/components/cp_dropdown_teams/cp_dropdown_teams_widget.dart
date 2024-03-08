import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'cp_dropdown_teams_model.dart';
export 'cp_dropdown_teams_model.dart';

class CpDropdownTeamsWidget extends StatefulWidget {
  const CpDropdownTeamsWidget({
    super.key,
    this.hintText,
  });

  final String? hintText;

  @override
  State<CpDropdownTeamsWidget> createState() => _CpDropdownTeamsWidgetState();
}

class _CpDropdownTeamsWidgetState extends State<CpDropdownTeamsWidget> {
  late CpDropdownTeamsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpDropdownTeamsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: ApiTeamsGroup.teamsAllCall.call(),
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
        final dropdownTeamsTeamsAllResponse = snapshot.data!;
        return FlutterFlowDropDown<int>(
          controller: _model.dropdownTeamsValueController ??=
              FormFieldController<int>(
            _model.dropdownTeamsValue ??= 0,
          ),
          options: List<int>.from(ApiTeamsGroup.teamsAllCall
              .id(
                dropdownTeamsTeamsAllResponse.jsonBody,
              )!
              .cast<int>()),
          optionLabels: ApiTeamsGroup.teamsAllCall
              .code(
                dropdownTeamsTeamsAllResponse.jsonBody,
              )!
              .map((e) => e.toString())
              .toList(),
          onChanged: (val) => setState(() => _model.dropdownTeamsValue = val),
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
