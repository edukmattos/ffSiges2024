import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cp_o_v_processing_model.dart';
export 'cp_o_v_processing_model.dart';

class CpOVProcessingWidget extends StatefulWidget {
  const CpOVProcessingWidget({
    super.key,
    required this.processingId,
  });

  final int? processingId;

  @override
  State<CpOVProcessingWidget> createState() => _CpOVProcessingWidgetState();
}

class _CpOVProcessingWidgetState extends State<CpOVProcessingWidget> {
  late CpOVProcessingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVProcessingModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(-1.0, 0.0),
      child: FutureBuilder<List<OrdersVisitsProcessingRow>>(
        future: OrdersVisitsProcessingTable().querySingleRow(
          queryFn: (q) => q.eq(
            'id',
            widget.processingId,
          ),
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
          List<OrdersVisitsProcessingRow>
              containerOrdersVisitsProcessingRowList = snapshot.data!;
          final containerOrdersVisitsProcessingRow =
              containerOrdersVisitsProcessingRowList.isNotEmpty
                  ? containerOrdersVisitsProcessingRowList.first
                  : null;
          return Container(
            width: double.infinity,
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        if (widget.processingId == 1) {
                          return Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.of(context).error,
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 2.0, 8.0, 2.0),
                              child: Text(
                                valueOrDefault<String>(
                                  containerOrdersVisitsProcessingRow
                                      ?.description,
                                  'description1',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                            ),
                          );
                        } else if (widget.processingId == 2) {
                          return Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.of(context).tertiary,
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 2.0, 8.0, 2.0),
                              child: Text(
                                valueOrDefault<String>(
                                  containerOrdersVisitsProcessingRow
                                      ?.description,
                                  'description1',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                            ),
                          );
                        } else {
                          return Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.of(context).primary,
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 2.0, 8.0, 2.0),
                              child: Text(
                                valueOrDefault<String>(
                                  containerOrdersVisitsProcessingRow
                                      ?.description,
                                  'description1',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
