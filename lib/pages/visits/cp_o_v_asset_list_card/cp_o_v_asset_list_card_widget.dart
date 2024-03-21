import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visits/cp_o_v_processing_card/cp_o_v_processing_card_widget.dart';
import 'package:flutter/material.dart';
import 'cp_o_v_asset_list_card_model.dart';
export 'cp_o_v_asset_list_card_model.dart';

class CpOVAssetListCardWidget extends StatefulWidget {
  const CpOVAssetListCardWidget({
    super.key,
    int? oVAssetId,
  }) : oVAssetId = oVAssetId ?? 1;

  final int oVAssetId;

  @override
  State<CpOVAssetListCardWidget> createState() =>
      _CpOVAssetListCardWidgetState();
}

class _CpOVAssetListCardWidgetState extends State<CpOVAssetListCardWidget>
    with TickerProviderStateMixin {
  late CpOVAssetListCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVAssetListCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<VOrdersVisitsAssetsRow>>(
      future: VOrdersVisitsAssetsTable().querySingleRow(
        queryFn: (q) => q.eq(
          'id',
          widget.oVAssetId,
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
        List<VOrdersVisitsAssetsRow> flightCardVOrdersVisitsAssetsRowList =
            snapshot.data!;
        final flightCardVOrdersVisitsAssetsRow =
            flightCardVOrdersVisitsAssetsRowList.isNotEmpty
                ? flightCardVOrdersVisitsAssetsRowList.first
                : null;
        return Container(
          width: double.infinity,
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
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'pgAssetShow',
                            queryParameters: {
                              'ppView': serializeParam(
                                '',
                                ParamType.String,
                              ),
                              'ppAssetId': serializeParam(
                                0,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Text(
                          valueOrDefault<String>(
                            flightCardVOrdersVisitsAssetsRow?.description,
                            '.',
                          ),
                          style: FlutterFlowTheme.of(context).titleLarge,
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.cpOVProcessingCardModel,
                      updateCallback: () => setState(() {}),
                      child: CpOVProcessingCardWidget(
                        processingDescription: flightCardVOrdersVisitsAssetsRow!
                            .processingDescription!,
                        processingId:
                            flightCardVOrdersVisitsAssetsRow.processingId!,
                      ),
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Text(
                        valueOrDefault<String>(
                          flightCardVOrdersVisitsAssetsRow
                              .beforeUnitDescription,
                          '.',
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
                        flightCardVOrdersVisitsAssetsRow.code,
                        '.',
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge,
                    ),
                    Text(
                      valueOrDefault<String>(
                        flightCardVOrdersVisitsAssetsRow
                            .beforeStatusDescription,
                        '.',
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
                        flightCardVOrdersVisitsAssetsRow.beforeTagDescription,
                        '.',
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge,
                    ),
                    Text(
                      valueOrDefault<String>(
                        flightCardVOrdersVisitsAssetsRow
                            .beforeTagSubDescription,
                        '.',
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge,
                    ),
                  ],
                ),
                const Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [],
                ),
              ].divide(const SizedBox(height: 8.0)),
            ),
          ),
        );
      },
    );
  }
}
