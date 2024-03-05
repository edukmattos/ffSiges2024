import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_order_visit_processing/cp_order_visit_processing_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cp_order_visit_asset_list_card_model.dart';
export 'cp_order_visit_asset_list_card_model.dart';

class CpOrderVisitAssetListCardWidget extends StatefulWidget {
  const CpOrderVisitAssetListCardWidget({
    super.key,
    String? assetDescription,
    required this.unitDescription,
    required this.assetCode,
    required this.assetStatusDescription,
    required this.assetTagDescription,
    required this.assetTagSubDescription,
    required this.processingId,
  }) : assetDescription = assetDescription ?? 'description';

  final String assetDescription;
  final String? unitDescription;
  final String? assetCode;
  final String? assetStatusDescription;
  final String? assetTagDescription;
  final String? assetTagSubDescription;
  final int? processingId;

  @override
  State<CpOrderVisitAssetListCardWidget> createState() =>
      _CpOrderVisitAssetListCardWidgetState();
}

class _CpOrderVisitAssetListCardWidgetState
    extends State<CpOrderVisitAssetListCardWidget>
    with TickerProviderStateMixin {
  late CpOrderVisitAssetListCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOrderVisitAssetListCardModel());

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

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 8.0,
            color: Color(0x230F1113),
            offset: Offset(0.0, 4.0),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    widget.assetDescription,
                    style: FlutterFlowTheme.of(context).titleLarge,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    valueOrDefault<String>(
                      widget.unitDescription,
                      'assetCode',
                    ),
                    style: FlutterFlowTheme.of(context).labelLarge,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.assetCode,
                    'assetCode',
                  ),
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
                Text(
                  valueOrDefault<String>(
                    widget.assetStatusDescription,
                    'assetStatusDescription',
                  ),
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.assetTagDescription,
                    'assetTagDescription',
                  ),
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
                Text(
                  valueOrDefault<String>(
                    widget.assetTagSubDescription,
                    'assetTagDescription',
                  ),
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: wrapWithModel(
                    model: _model.cpOrderVisitProcessingModel,
                    updateCallback: () => setState(() {}),
                    child: CpOrderVisitProcessingWidget(
                      processingId: widget.processingId!,
                    ),
                  ),
                ),
              ],
            ),
          ].divide(const SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
