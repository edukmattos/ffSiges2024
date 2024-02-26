import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visits/cp_order_visit_services_list/cp_order_visit_services_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'md_orders_visits_services_detalis_model.dart';
export 'md_orders_visits_services_detalis_model.dart';

class MdOrdersVisitsServicesDetalisWidget extends StatefulWidget {
  const MdOrdersVisitsServicesDetalisWidget({
    super.key,
    int? orderVisitId,
  }) : orderVisitId = orderVisitId ?? 1;

  final int orderVisitId;

  @override
  State<MdOrdersVisitsServicesDetalisWidget> createState() =>
      _MdOrdersVisitsServicesDetalisWidgetState();
}

class _MdOrdersVisitsServicesDetalisWidgetState
    extends State<MdOrdersVisitsServicesDetalisWidget> {
  late MdOrdersVisitsServicesDetalisModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOrdersVisitsServicesDetalisModel());

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

    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
        child: Container(
          width: 600.0,
          height: MediaQuery.sizeOf(context).height * 0.5,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            boxShadow: const [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x25090F13),
                offset: Offset(0.0, 2.0),
              )
            ],
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Atendimento #${widget.orderVisitId.toString()}',
                      style: FlutterFlowTheme.of(context).headlineSmall,
                    ),
                    Text(
                      'Serviços',
                      style: FlutterFlowTheme.of(context).headlineSmall,
                    ),
                  ],
                ),
                Divider(
                  height: 24.0,
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.cpOrderVisitServicesListModel,
                          updateCallback: () => setState(() {}),
                          child: CpOrderVisitServicesListWidget(
                            orderVisitId: widget.orderVisitId,
                          ),
                        ),
                      ],
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
