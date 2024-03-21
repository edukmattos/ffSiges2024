import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visits/md_o_v_vehicle_edit/md_o_v_vehicle_edit_widget.dart';
import 'package:flutter/material.dart';
import 'cp_o_v_vehicles_list_item_model.dart';
export 'cp_o_v_vehicles_list_item_model.dart';

class CpOVVehiclesListItemWidget extends StatefulWidget {
  const CpOVVehiclesListItemWidget({
    super.key,
    int? ppOVVehicleId,
    int? ppProcessingId,
    int? ppOVId,
  })  : ppOVVehicleId = ppOVVehicleId ?? 1,
        ppProcessingId = ppProcessingId ?? 1,
        ppOVId = ppOVId ?? 1;

  final int ppOVVehicleId;
  final int ppProcessingId;
  final int ppOVId;

  @override
  State<CpOVVehiclesListItemWidget> createState() =>
      _CpOVVehiclesListItemWidgetState();
}

class _CpOVVehiclesListItemWidgetState
    extends State<CpOVVehiclesListItemWidget> {
  late CpOVVehiclesListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVVehiclesListItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
      child: FutureBuilder<List<VOrdersVisitsVehiclesRow>>(
        future: VOrdersVisitsVehiclesTable().querySingleRow(
          queryFn: (q) => q.eq(
            'id',
            widget.ppOVVehicleId,
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
          List<VOrdersVisitsVehiclesRow> userList5VOrdersVisitsVehiclesRowList =
              snapshot.data!;
          final userList5VOrdersVisitsVehiclesRow =
              userList5VOrdersVisitsVehiclesRowList.isNotEmpty
                  ? userList5VOrdersVisitsVehiclesRowList.first
                  : null;
          return InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: MdOVVehicleEditWidget(
                      ppOVVehicleId: widget.ppOVVehicleId,
                      ppOVId: widget.ppOVId,
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            child: Container(
              width: double.infinity,
              height: 70.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x32000000),
                    offset: Offset(0.0, 2.0),
                  )
                ],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                userList5VOrdersVisitsVehiclesRow
                                    ?.vehicleDescription,
                                '.',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Qte: ${userList5VOrdersVisitsVehiclesRow?.amountUnit?.toString()}${userList5VOrdersVisitsVehiclesRow?.unit} | Vlr.Unit.: ${formatNumber(
                                    userList5VOrdersVisitsVehiclesRow
                                        ?.priceUnit,
                                    formatType: FormatType.custom,
                                    currency: 'R\$ ',
                                    format: '##,##0.00',
                                    locale: 'pt_BR',
                                  )} | A/D:  ${formatNumber(
                                    userList5VOrdersVisitsVehiclesRow?.discount,
                                    formatType: FormatType.custom,
                                    format: '##,##0.00',
                                    locale: 'pt_BR',
                                  )}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    formatNumber(
                                      userList5VOrdersVisitsVehiclesRow
                                          ?.priceTotal,
                                      formatType: FormatType.custom,
                                      currency: 'R\$ ',
                                      format: '##,##0.00',
                                      locale: 'pt_BR',
                                    ),
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ].divide(const SizedBox(height: 8.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
