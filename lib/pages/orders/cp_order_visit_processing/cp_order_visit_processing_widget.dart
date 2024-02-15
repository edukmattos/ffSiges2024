import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_order_visit_processing_model.dart';
export 'cp_order_visit_processing_model.dart';

class CpOrderVisitProcessingWidget extends StatefulWidget {
  const CpOrderVisitProcessingWidget({
    super.key,
    required this.processingId,
  });

  final int? processingId;

  @override
  State<CpOrderVisitProcessingWidget> createState() =>
      _CpOrderVisitProcessingWidgetState();
}

class _CpOrderVisitProcessingWidgetState
    extends State<CpOrderVisitProcessingWidget> {
  late CpOrderVisitProcessingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOrderVisitProcessingModel());

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

    return FutureBuilder<List<OrdersVisitsProcessingRow>>(
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
        List<OrdersVisitsProcessingRow> containerOrdersVisitsProcessingRowList =
            snapshot.data!;
        final containerOrdersVisitsProcessingRow =
            containerOrdersVisitsProcessingRowList.isNotEmpty
                ? containerOrdersVisitsProcessingRowList.first
                : null;
        return Container(
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Builder(
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 2.0),
                        child: Text(
                          valueOrDefault<String>(
                            containerOrdersVisitsProcessingRow?.description,
                            'description1',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                        ),
                      ),
                    );
                  } else if (widget.processingId == 2) {
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 2.0, 8.0, 2.0),
                          child: Text(
                            valueOrDefault<String>(
                              containerOrdersVisitsProcessingRow?.description,
                              'description',
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
                        color: FlutterFlowTheme.of(context).success,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 2.0, 8.0, 2.0),
                          child: Text(
                            valueOrDefault<String>(
                              containerOrdersVisitsProcessingRow?.description,
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
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
