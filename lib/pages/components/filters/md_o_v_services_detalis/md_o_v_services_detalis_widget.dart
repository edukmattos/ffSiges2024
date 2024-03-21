import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visits/cp_o_v_services_list/cp_o_v_services_list_widget.dart';
import 'package:flutter/material.dart';
import 'md_o_v_services_detalis_model.dart';
export 'md_o_v_services_detalis_model.dart';

class MdOVServicesDetalisWidget extends StatefulWidget {
  const MdOVServicesDetalisWidget({
    super.key,
    int? orderVisitId,
  }) : orderVisitId = orderVisitId ?? 1;

  final int orderVisitId;

  @override
  State<MdOVServicesDetalisWidget> createState() =>
      _MdOVServicesDetalisWidgetState();
}

class _MdOVServicesDetalisWidgetState extends State<MdOVServicesDetalisWidget> {
  late MdOVServicesDetalisModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOVServicesDetalisModel());

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
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Container(
              width: 600.0,
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
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
                              'Serviços #${widget.orderVisitId.toString()}',
                              style: FlutterFlowTheme.of(context).headlineSmall,
                            ),
                            Align(
                              alignment: const AlignmentDirectional(1.0, 1.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 25.0,
                                borderWidth: 1.0,
                                buttonSize: 50.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                icon: Icon(
                                  Icons.close_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 30.0,
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 24.0,
                          thickness: 2.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.cpOVServicesListModel,
                                updateCallback: () => setState(() {}),
                                child: CpOVServicesListWidget(
                                  ppOVId: widget.orderVisitId,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ].divide(const SizedBox(height: 8.0)),
      ),
    );
  }
}
