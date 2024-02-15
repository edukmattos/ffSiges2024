import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/orders/cp_order_parent_status_card/cp_order_parent_status_card_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_order_card_show_model.dart';
export 'cp_order_card_show_model.dart';

class CpOrderCardShowWidget extends StatefulWidget {
  const CpOrderCardShowWidget({
    super.key,
    required this.orderId,
  });

  final int? orderId;

  @override
  State<CpOrderCardShowWidget> createState() => _CpOrderCardShowWidgetState();
}

class _CpOrderCardShowWidgetState extends State<CpOrderCardShowWidget>
    with TickerProviderStateMixin {
  late CpOrderCardShowModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 800.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'dividerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1400.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1400.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1400.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation9': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation10': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation11': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1600.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
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
    _model = createModel(context, () => CpOrderCardShowModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return FutureBuilder<List<VOrdersRow>>(
      future: VOrdersTable().querySingleRow(
        queryFn: (q) => q.eq(
          'id',
          widget.orderId,
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
        List<VOrdersRow> containerVOrdersRowList = snapshot.data!;
        final containerVOrdersRow = containerVOrdersRowList.isNotEmpty
            ? containerVOrdersRowList.first
            : null;
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: containerVOrdersRow?.statusId == 4
                ? FlutterFlowTheme.of(context).success
                : const Color(0xFF384147),
            boxShadow: const [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x1F000000),
                offset: Offset(0.0, 2.0),
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'pgOrderShow',
                              queryParameters: {
                                'orderId': serializeParam(
                                  widget.orderId,
                                  ParamType.int,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Text(
                            valueOrDefault<String>(
                              containerVOrdersRow?.orderMask,
                              '.',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontSize: 20.0,
                                ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation1']!),
                        Text(
                          '${valueOrDefault<String>(
                            containerVOrdersRow?.typeCode,
                            '.',
                          )}/${valueOrDefault<String>(
                            containerVOrdersRow?.typeSubCode,
                            '.',
                          )}',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation2']!),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context).tertiary,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 2.0, 8.0, 2.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    containerVOrdersRow?.priorityDescription,
                                    'status',
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context).error,
                              borderRadius: 12.0,
                              buttonSize: 50.0,
                              fillColor: FlutterFlowTheme.of(context).error,
                              icon: FaIcon(
                                FontAwesomeIcons.trashAlt,
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                size: 24.0,
                              ),
                              showLoadingIndicator: true,
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'pgUnitShowOri',
                                  queryParameters: {
                                    'unitId': serializeParam(
                                      containerVOrdersRow?.unitId,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Text(
                                valueOrDefault<String>(
                                  containerVOrdersRow?.unitDescription,
                                  '.',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation3']!),
                          ),
                          Text(
                            valueOrDefault<String>(
                              containerVOrdersRow?.requestedServices,
                              'team',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0x9AFFFFFF),
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation4']!),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            containerVOrdersRow?.teamLeaderNameShort,
                            'team',
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0x9AFFFFFF),
                                  ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation5']!),
                        Text(
                          valueOrDefault<String>(
                            containerVOrdersRow?.teamCode,
                            'team',
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0x9AFFFFFF),
                                  ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation6']!),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        wrapWithModel(
                          model: _model.cpOrderParentStatusCardModel,
                          updateCallback: () => setState(() {}),
                          child: CpOrderParentStatusCardWidget(
                            statusId: containerVOrdersRow!.statusId!,
                            statusDescription:
                                containerVOrdersRow.statusDescription!,
                          ),
                        ),
                        Text(
                          '${valueOrDefault<String>(
                            dateTimeFormat(
                                'd/M H:mm', containerVOrdersRow.statusDate),
                            '.',
                          )} h',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0x9AFFFFFF),
                                  ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation7']!),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if ((FFAppState().stUserCurrent.orderVisitIdInProgress ==
                            0) &&
                        (containerVOrdersRow.teamLeaderId ==
                            FFAppState().stUserCurrent.id))
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () async {
                            var shouldSetState = false;
                            if (!isWeb) {
                              await requestPermission(locationPermission);
                              if (!(await getPermissionStatus(
                                  locationPermission))) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Ops ...'),
                                      content: const Text(
                                          'É necessário permissão à sua Localização'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                if (shouldSetState) setState(() {});
                                return;
                              }
                            }
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Atendimento'),
                                      content:
                                          const Text('Deseja realmente iniciar ?'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: const Text('Cancelar'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: const Text('Confirmar'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                false;
                            if (confirmDialogResponse) {
                              _model.resVisitAdded =
                                  await OrdersVisitsTable().insert({
                                'orderId': containerVOrdersRow.id,
                                'dateStart': supaSerialize<DateTime>(
                                    getCurrentTimestamp),
                                'processingId': 1,
                                'statusId': 1,
                                'teamLeaderId': FFAppState().stUserCurrent.id,
                                'createdUserId': FFAppState().stUserCurrent.id,
                                'createdDate': supaSerialize<DateTime>(
                                    getCurrentTimestamp),
                                'orderParentId': containerVOrdersRow.parentId,
                              });
                              shouldSetState = true;
                              await action_blocks.abOrderVisitSelected(
                                context,
                                abOrderVisitId: _model.resVisitAdded?.id,
                              );
                              setState(() {
                                FFAppState().updateStUserCurrentStruct(
                                  (e) => e
                                    ..orderVisitIdInProgress = FFAppState()
                                        .stOrderVisitSelected
                                        .first
                                        .id
                                    ..orderIdInProgress = FFAppState()
                                        .stOrderVisitSelected
                                        .first
                                        .orderId
                                    ..orderParentIdInProgress = FFAppState()
                                        .stOrderVisitSelected
                                        .first
                                        .orderParentId
                                    ..orderVisitInProgressTeamLeaderId =
                                        FFAppState().stUserCurrent.id,
                                );
                              });
                              _model.resUsersTeamCurrent =
                                  await ApiUsersGroup.usersByTeamIdCall.call(
                                teamId: FFAppState().stUserCurrent.teamId,
                              );
                              shouldSetState = true;
                              setState(() {
                                FFAppState()
                                    .stOrderVisitOpenTeamUsers = ((_model
                                                    .resUsersTeamCurrent
                                                    ?.jsonBody ??
                                                '')
                                            .toList()
                                            .map<DtOrderVisitOpenTeamUsersStruct?>(
                                                DtOrderVisitOpenTeamUsersStruct
                                                    .maybeFromMap)
                                            .toList()
                                        as Iterable<
                                            DtOrderVisitOpenTeamUsersStruct?>)
                                    .withoutNulls
                                    .map((e) => e.id)
                                    .toList()
                                    .cast<int>();
                              });
                              setState(() {
                                FFAppState().stCounterLoop = 1;
                                FFAppState().stCounterLoopFinal = FFAppState()
                                    .stOrderVisitOpenTeamUsers
                                    .length;
                              });
                              while (FFAppState().stCounterLoop <=
                                  FFAppState().stCounterLoopFinal) {
                                if (FFAppState().stUserCurrent.id ==
                                    FFAppState().stOrderVisitOpenTeamUsers[
                                        FFAppState().stCounterLoop - 1]) {
                                  await OrdersVisitsTeamsTable().insert({
                                    'visitId': _model.resVisitAdded?.id,
                                    'userId': FFAppState().stUserCurrent.id,
                                    'isLeader': true,
                                    'orderParentId':
                                        containerVOrdersRow.parentId,
                                    'orderId': containerVOrdersRow.id,
                                  });
                                } else {
                                  await OrdersVisitsTeamsTable().insert({
                                    'visitId': _model.resVisitAdded?.id,
                                    'userId':
                                        FFAppState().stOrderVisitOpenTeamUsers[
                                            FFAppState().stCounterLoop - 1],
                                    'isLeader': false,
                                    'orderParentId':
                                        containerVOrdersRow.parentId,
                                    'orderId': containerVOrdersRow.id,
                                  });
                                }

                                await UsersTable().update(
                                  data: {
                                    'orderVisitIdInProgress':
                                        _model.resVisitAdded?.id,
                                    'orderIdInProgress':
                                        _model.resVisitAdded?.orderId,
                                    'orderParentIdInProgress':
                                        _model.resVisitAdded?.orderParentId,
                                    'orderVisitInProgressTeamLeaderId':
                                        FFAppState().stUserCurrent.id,
                                  },
                                  matchingRows: (rows) => rows.eq(
                                    'id',
                                    FFAppState().stOrderVisitOpenTeamUsers[
                                        FFAppState().stCounterLoop - 1],
                                  ),
                                );
                                setState(() {
                                  FFAppState().stCounterLoop =
                                      FFAppState().stCounterLoop + 1;
                                });
                              }
                              setState(() {
                                FFAppState().stOrderVisitOpenTeamUsers = [];
                              });
                              await OrdersTable().update(
                                data: {
                                  'statusId': 4,
                                  'statusDate': supaSerialize<DateTime>(
                                      getCurrentTimestamp),
                                },
                                matchingRows: (rows) => rows.eq(
                                  'id',
                                  valueOrDefault<int>(
                                    FFAppState()
                                        .stOrderVisitSelected
                                        .first
                                        .orderId,
                                    1,
                                  ),
                                ),
                              );
                              await action_blocks.abOrderSelected(
                                context,
                                abOrderId: valueOrDefault<int>(
                                  FFAppState()
                                      .stOrderVisitSelected
                                      .first
                                      .orderId,
                                  1,
                                ),
                              );

                              context.pushNamed('pgDashboardUserOrders');

                              await Future.delayed(
                                  const Duration(milliseconds: 5000));
                              await action_blocks.abOrderParentEvents(
                                context,
                                abOrderParentId: valueOrDefault<int>(
                                  FFAppState()
                                      .stOrderVisitSelected
                                      .first
                                      .orderParentId,
                                  1,
                                ),
                                abTitle: 'OS ${valueOrDefault<String>(
                                  FFAppState().stOrderSelected.first.orderMask,
                                  'orderMask',
                                )} ${valueOrDefault<String>(
                                  FFAppState()
                                      .stOrderSelected
                                      .first
                                      .statusDescription,
                                  'statusDescription',
                                )}',
                                abBody:
                                    '${FFAppState().stUserCurrent.nameShort} iniciou atendimento em ${valueOrDefault<String>(
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
                                )}',
                              );
                            } else {
                              if (shouldSetState) setState(() {});
                              return;
                            }

                            if (shouldSetState) setState(() {});
                          },
                          text: 'Iniciar Atendimento',
                          options: FFButtonOptions(
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).success,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                  ],
                ),
                const Divider(
                  height: 12.0,
                  thickness: 1.0,
                  color: Color(0xFF6AA3B8),
                ).animateOnPageLoad(
                    animationsMap['dividerOnPageLoadAnimation']!),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Solicitante',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  containerVOrdersRow.requesterName,
                                  '.',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0x9AFFFFFF),
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation8']!),
                              Text(
                                valueOrDefault<String>(
                                  containerVOrdersRow.requesterTeamCode,
                                  '.',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0x9AFFFFFF),
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation9']!),
                              Text(
                                valueOrDefault<String>(
                                  containerVOrdersRow.requesterPhone,
                                  '.',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0x9AFFFFFF),
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation10']!),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Data/hora',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                              Text(
                                '${valueOrDefault<String>(
                                  dateTimeFormat('d/M H:mm',
                                      containerVOrdersRow.requesterDate),
                                  '.',
                                )} h',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0x9AFFFFFF),
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation11']!),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ].divide(const SizedBox(height: 8.0)),
            ),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
      },
    );
  }
}
