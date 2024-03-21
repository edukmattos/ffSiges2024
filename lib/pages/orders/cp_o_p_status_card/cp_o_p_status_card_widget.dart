import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cp_o_p_status_card_model.dart';
export 'cp_o_p_status_card_model.dart';

class CpOPStatusCardWidget extends StatefulWidget {
  const CpOPStatusCardWidget({
    super.key,
    required this.statusId,
    required this.statusDescription,
  });

  final int? statusId;
  final String? statusDescription;

  @override
  State<CpOPStatusCardWidget> createState() => _CpOPStatusCardWidgetState();
}

class _CpOPStatusCardWidgetState extends State<CpOPStatusCardWidget> {
  late CpOPStatusCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOPStatusCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Builder(
          builder: (context) {
            if (widget.statusId == 1) {
              return Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: FlutterFlowTheme.of(context).primaryBtnText,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 2.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.statusDescription,
                      'statusDescription',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                  ),
                ),
              );
            } else if (widget.statusId == 2) {
              return Align(
                alignment: const AlignmentDirectional(1.0, 0.0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.of(context).success,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 2.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.statusDescription,
                        'statusDescription',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
              );
            } else {
              return Align(
                alignment: const AlignmentDirectional(1.0, 0.0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.of(context).tertiary,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 2.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.statusDescription,
                        'statusDescription',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context)
                                .backgroundComponents,
                          ),
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
