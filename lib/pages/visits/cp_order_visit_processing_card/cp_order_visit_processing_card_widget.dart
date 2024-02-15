import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_order_visit_processing_card_model.dart';
export 'cp_order_visit_processing_card_model.dart';

class CpOrderVisitProcessingCardWidget extends StatefulWidget {
  const CpOrderVisitProcessingCardWidget({
    super.key,
    String? processingDescription,
    int? processingId,
  })  : processingDescription = processingDescription ?? 'Rascunho',
        processingId = processingId ?? 1;

  final String processingDescription;
  final int processingId;

  @override
  State<CpOrderVisitProcessingCardWidget> createState() =>
      _CpOrderVisitProcessingCardWidgetState();
}

class _CpOrderVisitProcessingCardWidgetState
    extends State<CpOrderVisitProcessingCardWidget> {
  late CpOrderVisitProcessingCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOrderVisitProcessingCardModel());

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

    return Builder(
      builder: (context) {
        if (widget.processingId == 1) {
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
                widget.processingDescription,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).backgroundComponents,
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
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 2.0),
              child: Text(
                widget.processingDescription,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).backgroundComponents,
                    ),
              ),
            ),
          );
        } else if (widget.processingId == 3) {
          return Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: FlutterFlowTheme.of(context).success,
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 2.0),
              child: Text(
                widget.processingDescription,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                    ),
              ),
            ),
          );
        } else {
          return Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: FlutterFlowTheme.of(context).error,
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 2.0),
              child: Text(
                widget.processingDescription,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                    ),
              ),
            ),
          );
        }
      },
    );
  }
}
