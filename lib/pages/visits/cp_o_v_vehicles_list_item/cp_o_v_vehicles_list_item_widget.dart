import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_o_v_vehicles_list_item_model.dart';
export 'cp_o_v_vehicles_list_item_model.dart';

class CpOVVehiclesListItemWidget extends StatefulWidget {
  const CpOVVehiclesListItemWidget({
    super.key,
    required this.orderVisitVehicle,
  });

  final VOrdersVisitsVehiclesRow? orderVisitVehicle;

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
    context.watch<FFAppState>();

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
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.orderVisitVehicle?.vehicleDescription,
                          '.',
                        ),
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Qte: ${formatNumber(
                              widget.orderVisitVehicle?.amountUnit,
                              formatType: FormatType.custom,
                              format: '000',
                              locale: '',
                            )}${widget.orderVisitVehicle?.unit} | Vlr.Unit.: ${formatNumber(
                              widget.orderVisitVehicle?.priceUnit,
                              formatType: FormatType.custom,
                              currency: 'R\$ ',
                              format: '#,##0.00',
                              locale: 'pt_BR',
                            )} | Desc:  ${formatNumber(
                              widget.orderVisitVehicle?.discount,
                              formatType: FormatType.custom,
                              format: '#,##0.00',
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
                              widget.orderVisitVehicle!.priceTotal!,
                              formatType: FormatType.custom,
                              currency: 'R\$ ',
                              format: '#,##0.00',
                              locale: 'pt_BR',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
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
                            style: FlutterFlowTheme.of(context).bodyLarge,
                          )),
                      offset: 4.0,
                      preferredDirection: AxisDirection.down,
                      borderRadius: BorderRadius.circular(8.0),
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: const Duration(milliseconds: 100),
                      showDuration: const Duration(milliseconds: 1500),
                      triggerMode: TooltipTriggerMode.tap,
                      child: Visibility(
                        visible:
                            FFAppState().stOVSelected.first.processingId != 4,
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 12.0,
                          buttonSize: 50.0,
                          fillColor: FlutterFlowTheme.of(context).error,
                          icon: FaIcon(
                            FontAwesomeIcons.trashAlt,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 24.0,
                          ),
                          showLoadingIndicator: true,
                          onPressed: () {
                            print('IconButton pressed ...');
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
  }
}
