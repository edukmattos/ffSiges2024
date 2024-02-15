import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/orders/cp_dropdown_visit_orders_statuses/cp_dropdown_visit_orders_statuses_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'md_order_visit_close_model.dart';
export 'md_order_visit_close_model.dart';

class MdOrderVisitCloseWidget extends StatefulWidget {
  const MdOrderVisitCloseWidget({
    super.key,
    required this.visitId,
    required this.orderId,
  });

  final int? visitId;
  final int? orderId;

  @override
  State<MdOrderVisitCloseWidget> createState() =>
      _MdOrderVisitCloseWidgetState();
}

class _MdOrderVisitCloseWidgetState extends State<MdOrderVisitCloseWidget>
    with TickerProviderStateMixin {
  late MdOrderVisitCloseModel _model;

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 100.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 400.ms,
          begin: const Offset(-30.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MdOrderVisitCloseModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.resOrderVisitTeamCurrent =
          await ApiOrdersVisitsTeamsGroup.apiDtUsersByVisitIdCall.call(
        visitId: FFAppState().stUserCurrent.orderVisitIdInProgress,
      );
      setState(() {
        _model.lcsvUsersByVisitId =
            ((_model.resOrderVisitTeamCurrent?.jsonBody ?? '')
                    .toList()
                    .map<ApiDtUsersByVisitIdStruct?>(
                        ApiDtUsersByVisitIdStruct.maybeFromMap)
                    .toList() as Iterable<ApiDtUsersByVisitIdStruct?>)
                .withoutNulls
                .toList()
                .cast<ApiDtUsersByVisitIdStruct>();
      });
    });

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
      decoration: const BoxDecoration(
        color: Color(0xB20B191E),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 1.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: const AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 44.0,
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      icon: Icon(
                        Icons.close_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  elevation: 5.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              18.0, 0.0, 18.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: Text(
                                              'Atendimento',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      height: 4.0,
                                      thickness: 1.0,
                                      color: Color(0xFFE0E3E7),
                                    ),
                                    Form(
                                      key: _model.formKey,
                                      autovalidateMode: AutovalidateMode.always,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 4.0),
                                            child: Text(
                                              'Qual Situação da OS ?',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation']!),
                                          ),
                                          Container(
                                            decoration: const BoxDecoration(),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 24.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .cpDropdownVisitOrdersStatusesModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child:
                                                  const CpDropdownVisitOrdersStatusesWidget(),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                _model.resOrderVisitCurrent =
                                                    await OrdersVisitsTable()
                                                        .update(
                                                  data: {
                                                    'dateEnd': supaSerialize<
                                                            DateTime>(
                                                        getCurrentTimestamp),
                                                    'statusId': 2,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eq(
                                                    'id',
                                                    FFAppState()
                                                        .stOrderVisitSelected
                                                        .first
                                                        .id,
                                                  ),
                                                  returnRows: true,
                                                );
                                                await action_blocks
                                                    .abOrderVisitSelected(
                                                  context,
                                                  abOrderVisitId:
                                                      valueOrDefault<int>(
                                                    FFAppState()
                                                        .stOrderVisitSelected
                                                        .first
                                                        .id,
                                                    1,
                                                  ),
                                                );
                                                await OrdersTable().update(
                                                  data: {
                                                    'statusId': _model
                                                        .cpDropdownVisitOrdersStatusesModel
                                                        .dropdownOrdersStatusesValue,
                                                    'statusDate': supaSerialize<
                                                            DateTime>(
                                                        getCurrentTimestamp),
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eq(
                                                    'id',
                                                    FFAppState()
                                                        .stOrderVisitSelected
                                                        .first
                                                        .orderId,
                                                  ),
                                                );
                                                await action_blocks
                                                    .abOrderSelected(
                                                  context,
                                                  abOrderId:
                                                      valueOrDefault<int>(
                                                    FFAppState()
                                                        .stOrderVisitSelected
                                                        .first
                                                        .orderId,
                                                    1,
                                                  ),
                                                );
                                                setState(() {
                                                  FFAppState().stCounterLoop =
                                                      1;
                                                  FFAppState()
                                                          .stCounterLoopFinal =
                                                      _model.lcsvUsersByVisitId
                                                          .length;
                                                });
                                                while (FFAppState()
                                                        .stCounterLoop <=
                                                    FFAppState()
                                                        .stCounterLoopFinal) {
                                                  await UsersTable().update(
                                                    data: {
                                                      'orderParentIdInProgress':
                                                          null,
                                                      'orderIdInProgress': null,
                                                      'orderVisitIdInProgress':
                                                          null,
                                                      'orderVisitInProgressTeamLeaderId':
                                                          null,
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eq(
                                                      'id',
                                                      _model
                                                          .lcsvUsersByVisitId[
                                                              FFAppState()
                                                                      .stCounterLoop -
                                                                  1]
                                                          .userId,
                                                    ),
                                                  );
                                                  setState(() {
                                                    FFAppState().stCounterLoop =
                                                        FFAppState()
                                                                .stCounterLoop +
                                                            1;
                                                  });
                                                }
                                                await action_blocks
                                                    .abUserUpdate(
                                                  context,
                                                  abEmail: FFAppState()
                                                      .stUserCurrent
                                                      .email,
                                                  abAccessToken: FFAppState()
                                                      .stUserCurrent
                                                      .accessToken,
                                                );
                                                await OrdersTable().update(
                                                  data: {
                                                    'statusId': _model
                                                        .cpDropdownVisitOrdersStatusesModel
                                                        .dropdownOrdersStatusesValue,
                                                    'statusDate': supaSerialize<
                                                            DateTime>(
                                                        getCurrentTimestamp),
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eq(
                                                    'id',
                                                    FFAppState()
                                                        .stOrderVisitSelected
                                                        .first
                                                        .orderId,
                                                  ),
                                                );
                                                Navigator.pop(context);
                                                setState(() {
                                                  FFAppState()
                                                      .updateStUserCurrentStruct(
                                                    (e) => e
                                                      ..orderIdInProgress = null
                                                      ..orderVisitIdInProgress =
                                                          null
                                                      ..orderParentIdInProgress =
                                                          null
                                                      ..orderVisitInProgressTeamLeaderId =
                                                          null,
                                                  );
                                                });

                                                context.pushNamed(
                                                  'pgOrderVisitShow',
                                                  queryParameters: {
                                                    'visitId': serializeParam(
                                                      valueOrDefault<int>(
                                                        FFAppState()
                                                            .stOrderVisitSelected
                                                            .first
                                                            .id,
                                                        1,
                                                      ),
                                                      ParamType.int,
                                                    ),
                                                    'orderId': serializeParam(
                                                      valueOrDefault<int>(
                                                        FFAppState()
                                                            .stOrderVisitSelected
                                                            .first
                                                            .orderId,
                                                        1,
                                                      ),
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 5000));
                                                await action_blocks
                                                    .abOrderParentEvents(
                                                  context,
                                                  abOrderParentId:
                                                      valueOrDefault<int>(
                                                    FFAppState()
                                                        .stOrderVisitSelected
                                                        .first
                                                        .orderParentId,
                                                    1,
                                                  ),
                                                  abTitle:
                                                      'OS ${valueOrDefault<String>(
                                                    FFAppState()
                                                        .stOrderSelected
                                                        .first
                                                        .orderMask,
                                                    'orderMask',
                                                  )} ${valueOrDefault<String>(
                                                    FFAppState()
                                                        .stOrderSelected
                                                        .first
                                                        .statusDescription,
                                                    'statusDescription',
                                                  )}',
                                                  abBody:
                                                      '${FFAppState().stUserCurrent.nameShort} encerrou atendimento em ${valueOrDefault<String>(
                                                    FFAppState()
                                                        .stOrderSelected
                                                        .first
                                                        .unitDescription,
                                                    'unitDescription',
                                                  )}\\n${valueOrDefault<String>(
                                                    FFAppState()
                                                        .stOrderSelected
                                                        .first
                                                        .requestedServices,
                                                    'requestedServices',
                                                  )}\\n',
                                                );

                                                setState(() {});
                                              },
                                              text: 'Encerrar',
                                              options: FFButtonOptions(
                                                height: 46.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ].addToEnd(const SizedBox(height: 24.0)),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 12.0)),
                                ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
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
