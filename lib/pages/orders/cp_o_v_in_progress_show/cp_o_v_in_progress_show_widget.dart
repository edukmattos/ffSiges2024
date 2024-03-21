import '/backend/supabase/supabase.dart';
import '/components/cp_o_priority_widget.dart';
import '/components/cp_o_statuses_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'cp_o_v_in_progress_show_model.dart';
export 'cp_o_v_in_progress_show_model.dart';

class CpOVInProgressShowWidget extends StatefulWidget {
  const CpOVInProgressShowWidget({
    super.key,
    int? ppOId,
    int? ppOVId,
  })  : ppOId = ppOId ?? 1,
        ppOVId = ppOVId ?? 1;

  final int ppOId;
  final int ppOVId;

  @override
  State<CpOVInProgressShowWidget> createState() =>
      _CpOVInProgressShowWidgetState();
}

class _CpOVInProgressShowWidgetState extends State<CpOVInProgressShowWidget>
    with TickerProviderStateMixin {
  late CpOVInProgressShowModel _model;

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
          begin: const Offset(0.0, 30.0),
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
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOVInProgressShowModel());

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

    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: const AlignmentDirectional(-1.0, -1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
              child: Text(
                'Atendimento em ABERTO',
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
            ),
          ),
          FutureBuilder<List<VOrdersVisitsRow>>(
            future: VOrdersVisitsTable().querySingleRow(
              queryFn: (q) => q.eq(
                'id',
                FFAppState().asUserCurrent.orderVisitIdInProgress,
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
              List<VOrdersVisitsRow> containerVOrdersVisitsRowList =
                  snapshot.data!;
              final containerVOrdersVisitsRow =
                  containerVOrdersVisitsRowList.isNotEmpty
                      ? containerVOrdersVisitsRowList.first
                      : null;
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x1F000000),
                      offset: Offset(0.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'pgOShow',
                                                queryParameters: {
                                                  'orderId': serializeParam(
                                                    containerVOrdersVisitsRow
                                                        ?.id,
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Text(
                                              valueOrDefault<String>(
                                                containerVOrdersVisitsRow
                                                    ?.orderMask,
                                                '.',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation1']!),
                                          Text(
                                            '${valueOrDefault<String>(
                                              containerVOrdersVisitsRow
                                                  ?.orderTypeCode,
                                              '.',
                                            )}/${valueOrDefault<String>(
                                              containerVOrdersVisitsRow
                                                  ?.orderTypeSubCode,
                                              '.',
                                            )}',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation2']!),
                                        ],
                                      ),
                                      wrapWithModel(
                                        model: _model.cpOPriorityModel,
                                        updateCallback: () => setState(() {}),
                                        child: const CpOPriorityWidget(),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          wrapWithModel(
                                            model: _model.cpOStatusesModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: CpOStatusesWidget(
                                              cpStatusId:
                                                  containerVOrdersVisitsRow!
                                                      .orderStatusId!,
                                              cpStatusDescription:
                                                  containerVOrdersVisitsRow
                                                      .orderStatusDescription!,
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 8.0)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                    containerVOrdersVisitsRow
                                                        .unitId,
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Text(
                                              valueOrDefault<String>(
                                                containerVOrdersVisitsRow
                                                    .unitDescription,
                                                '.',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineMedium
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation3']!),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            containerVOrdersVisitsRow
                                                .assetTagDescription,
                                            'assetTagDescription',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation4']!),
                                        Text(
                                          valueOrDefault<String>(
                                            containerVOrdersVisitsRow
                                                .requestedServices,
                                            'team',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation5']!),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  'pgOVShow',
                                                  queryParameters: {
                                                    'ppOVId': serializeParam(
                                                      widget.ppOVId,
                                                      ParamType.int,
                                                    ),
                                                    'ppOId': serializeParam(
                                                      widget.ppOId,
                                                      ParamType.int,
                                                    ),
                                                    'ppOPId': serializeParam(
                                                      containerVOrdersVisitsRow
                                                          .parentId,
                                                      ParamType.int,
                                                    ),
                                                    'ppProcessingId':
                                                        serializeParam(
                                                      containerVOrdersVisitsRow
                                                          .processingId,
                                                      ParamType.int,
                                                    ),
                                                    'ppUnitId': serializeParam(
                                                      containerVOrdersVisitsRow
                                                          .unitId,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Text(
                                                '# ${containerVOrdersVisitsRow.id?.toString()}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation6']!),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  '${valueOrDefault<String>(
                                                    dateTimeFormat(
                                                        'd/M H:mm',
                                                        containerVOrdersVisitsRow
                                                            .orderStatusDate),
                                                    '.',
                                                  )} h',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation7']!),
                                                Text(
                                                  valueOrDefault<String>(
                                                    dateTimeFormat(
                                                        'relative',
                                                        containerVOrdersVisitsRow
                                                            .dateStart),
                                                    '.',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation8']!),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                width: 65.0,
                                                height: 65.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: FutureBuilder<
                                                    List<
                                                        VOrdersVisitsTeamsRow>>(
                                                  future:
                                                      VOrdersVisitsTeamsTable()
                                                          .queryRows(
                                                    queryFn: (q) => q
                                                        .eq(
                                                          'orderVisitId',
                                                          widget.ppOVId,
                                                        )
                                                        .order('isLeader')
                                                        .order('nameShort',
                                                            ascending: true),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<VOrdersVisitsTeamsRow>
                                                        listViewVOrdersVisitsTeamsRowList =
                                                        snapshot.data!;
                                                    return ListView.separated(
                                                      padding: EdgeInsets.zero,
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount:
                                                          listViewVOrdersVisitsTeamsRowList
                                                              .length,
                                                      separatorBuilder: (_,
                                                              __) =>
                                                          const SizedBox(width: 8.0),
                                                      itemBuilder: (context,
                                                          listViewIndex) {
                                                        final listViewVOrdersVisitsTeamsRow =
                                                            listViewVOrdersVisitsTeamsRowList[
                                                                listViewIndex];
                                                        return AlignedTooltip(
                                                          content: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(4.0),
                                                              child: Text(
                                                                listViewVOrdersVisitsTeamsRow
                                                                    .nameShort!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge,
                                                              )),
                                                          offset: 4.0,
                                                          preferredDirection:
                                                              AxisDirection
                                                                  .down,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          elevation: 4.0,
                                                          tailBaseWidth: 24.0,
                                                          tailLength: 12.0,
                                                          waitDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      100),
                                                          showDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      1500),
                                                          triggerMode:
                                                              TooltipTriggerMode
                                                                  .tap,
                                                          child:
                                                              CpUserPicProfileWidget(
                                                            key: Key(
                                                                'Keymdp_${listViewIndex}_of_${listViewVOrdersVisitsTeamsRowList.length}'),
                                                            size: 60,
                                                            imgUrl:
                                                                '${FFAppConstants.appServerUrlStorage}${listViewVOrdersVisitsTeamsRow.imgFilePath}${listViewVOrdersVisitsTeamsRow.imgFileName}',
                                                            toolTip:
                                                                listViewVOrdersVisitsTeamsRow
                                                                    .nameShort!,
                                                            isAvailable:
                                                                listViewVOrdersVisitsTeamsRow
                                                                    .isAvailable!,
                                                            isOrderVisitIdInProgress:
                                                                listViewVOrdersVisitsTeamsRow
                                                                    .isOrderVisitIdInProgress!,
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 8.0)),
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 12.0)),
                          ),
                        ),
                      ].divide(const SizedBox(height: 12.0)),
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!);
            },
          ),
        ],
      ),
    );
  }
}
