import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visits/md_o_v_vehicle_edit/md_o_v_vehicle_edit_widget.dart';
import 'package:flutter/material.dart';
import 'cp_o_v_vehicles_list_model.dart';
export 'cp_o_v_vehicles_list_model.dart';

class CpOVVehiclesListWidget extends StatefulWidget {
  const CpOVVehiclesListWidget({
    super.key,
    required this.orderVisitVehicle,
  });

  final VOrdersVisitsVehiclesRow? orderVisitVehicle;

  @override
  State<CpOVVehiclesListWidget> createState() => _CpOVVehiclesListWidgetState();
}

class _CpOVVehiclesListWidgetState extends State<CpOVVehiclesListWidget> {
  late CpOVVehiclesListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVVehiclesListModel());

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
      child: InkWell(
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
                  oVVehicle: widget.orderVisitVehicle!,
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
                              'Qte: ${widget.orderVisitVehicle?.amountUnit?.toString()}${widget.orderVisitVehicle?.unit} | Vlr.Unit.: ${valueOrDefault<String>(
                                formatNumber(
                                  widget.orderVisitVehicle?.priceUnit,
                                  formatType: FormatType.custom,
                                  currency: 'R\$ ',
                                  format: '#,##0.00',
                                  locale: 'pt_BR',
                                ),
                                'R\$ ',
                              )} | Desc:  ${widget.orderVisitVehicle?.discount?.toString()}%',
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
      ),
    );
  }
}
