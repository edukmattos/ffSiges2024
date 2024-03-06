import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_order_visit_services_list_model.dart';
export 'cp_order_visit_services_list_model.dart';

class CpOrderVisitServicesListWidget extends StatefulWidget {
  const CpOrderVisitServicesListWidget({
    super.key,
    required this.orderVisitId,
  });

  final int? orderVisitId;

  @override
  State<CpOrderVisitServicesListWidget> createState() =>
      _CpOrderVisitServicesListWidgetState();
}

class _CpOrderVisitServicesListWidgetState
    extends State<CpOrderVisitServicesListWidget> {
  late CpOrderVisitServicesListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOrderVisitServicesListModel());

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

    return FutureBuilder<List<VOrdersVisitsServicesRow>>(
      future: VOrdersVisitsServicesTable().queryRows(
        queryFn: (q) => q.eq(
          'orderVisitId',
          widget.orderVisitId,
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
        List<VOrdersVisitsServicesRow>
            listViewServicesSelectedVOrdersVisitsServicesRowList =
            snapshot.data!;
        return ListView.builder(
          padding: EdgeInsets.zero,
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount:
              listViewServicesSelectedVOrdersVisitsServicesRowList.length,
          itemBuilder: (context, listViewServicesSelectedIndex) {
            final listViewServicesSelectedVOrdersVisitsServicesRow =
                listViewServicesSelectedVOrdersVisitsServicesRowList[
                    listViewServicesSelectedIndex];
            return Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  listViewServicesSelectedVOrdersVisitsServicesRow
                                      .serviceDescription,
                                  'serviceDescription',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Qte: ${formatNumber(
                                      listViewServicesSelectedVOrdersVisitsServicesRow
                                          .amount,
                                      formatType: FormatType.custom,
                                      format: '#.00',
                                      locale: 'pt_BR',
                                    )}${listViewServicesSelectedVOrdersVisitsServicesRow.serviceUnit} | Vlr.Unit.: ${formatNumber(
                                      listViewServicesSelectedVOrdersVisitsServicesRow
                                          .priceUnit,
                                      formatType: FormatType.custom,
                                      currency: 'R\$ ',
                                      format: '#,###.00',
                                      locale: 'pt_BR',
                                    )} | Desc:  ${formatNumber(
                                      listViewServicesSelectedVOrdersVisitsServicesRow
                                          .discount,
                                      formatType: FormatType.custom,
                                      format: '###.00',
                                      locale: 'pt_BR',
                                    )}%',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                  Text(
                                    formatNumber(
                                      listViewServicesSelectedVOrdersVisitsServicesRow
                                          .total!,
                                      formatType: FormatType.custom,
                                      currency: 'R\$ ',
                                      format: '#,###.00',
                                      locale: 'pt_BR',
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
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AlignedTooltip(
                              content: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Adicionar',
                                    style:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                  )),
                              offset: 4.0,
                              preferredDirection: AxisDirection.down,
                              borderRadius: BorderRadius.circular(8.0),
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 4.0,
                              tailBaseWidth: 24.0,
                              tailLength: 12.0,
                              waitDuration: const Duration(milliseconds: 100),
                              showDuration: const Duration(milliseconds: 1500),
                              triggerMode: TooltipTriggerMode.tap,
                              child: Visibility(
                                visible: FFAppState()
                                        .stOVSelected
                                        .first
                                        .processingId !=
                                    4,
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 12.0,
                                  buttonSize: 50.0,
                                  fillColor: FlutterFlowTheme.of(context).error,
                                  icon: FaIcon(
                                    FontAwesomeIcons.trashAlt,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 24.0,
                                  ),
                                  showLoadingIndicator: true,
                                  onPressed: () async {
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: const Text('Ops ...'),
                                                  content: const Text(
                                                      'Deseja realmente EXCLUIR ?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: const Text('Cancelar'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: const Text('Confirmar'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (confirmDialogResponse) {
                                      await OrdersVisitsServicesTable().delete(
                                        matchingRows: (rows) => rows.eq(
                                          'id',
                                          listViewServicesSelectedVOrdersVisitsServicesRow
                                              .id,
                                        ),
                                      );
                                      await action_blocks
                                          .abOrderVisitSelectedServices(
                                        context,
                                        abOrderVisitId:
                                            FFAppState().stOVSelected.first.id,
                                      );
                                      setState(() {});
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
