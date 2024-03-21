import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_o_priority_widget.dart';
import '/components/cp_o_statuses_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'cp_o_p_d_b_admin_card_show_model.dart';
export 'cp_o_p_d_b_admin_card_show_model.dart';

class CpOPDBAdminCardShowWidget extends StatefulWidget {
  const CpOPDBAdminCardShowWidget({
    super.key,
    required this.orderParentId,
  });

  final int? orderParentId;

  @override
  State<CpOPDBAdminCardShowWidget> createState() =>
      _CpOPDBAdminCardShowWidgetState();
}

class _CpOPDBAdminCardShowWidgetState extends State<CpOPDBAdminCardShowWidget>
    with TickerProviderStateMixin {
  late CpOPDBAdminCardShowModel _model;

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
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOPDBAdminCardShowModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultxzh =
          await ApiOrdersFollowersGroup.orderFollowedCall.call(
        orderId: widget.orderParentId,
        userId: FFAppState().asUserCurrent.id,
      );
      if ((_model.apiResultxzh?.succeeded ?? true)) {
        if (ApiOrdersFollowersGroup.orderFollowedCall.orderId(
              (_model.apiResultxzh?.jsonBody ?? ''),
            ) ==
            widget.orderParentId) {
          setState(() {
            _model.isFollowed = true;
          });
        } else {
          setState(() {
            _model.isFollowed = false;
          });
        }
      }
    });

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
          widget.orderParentId,
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
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
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
                                        'pgOPSearch',
                                        queryParameters: {
                                          'orderParentId': serializeParam(
                                            containerVOrdersRow?.id,
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
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation1']!),
                                  Text(
                                    valueOrDefault<String>(
                                      containerVOrdersRow?.typeCode,
                                      '.',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation2']!),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  if (!_model.isFollowed)
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 25.0,
                                      buttonSize: 50.0,
                                      icon: Icon(
                                        Icons.bookmark_add_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        size: 30.0,
                                      ),
                                      showLoadingIndicator: true,
                                      onPressed: () async {
                                        await OrdersFollowersTable().insert({
                                          'orderId': widget.orderParentId,
                                          'userId':
                                              FFAppState().asUserCurrent.id,
                                        });
                                        setState(() {
                                          _model.isFollowed = true;
                                        });
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Adicionado aos seus Favoritos',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                      },
                                    ),
                                  if (_model.isFollowed)
                                    FlutterFlowIconButton(
                                      borderRadius: 25.0,
                                      buttonSize: 50.0,
                                      icon: Icon(
                                        Icons.bookmark_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        size: 30.0,
                                      ),
                                      showLoadingIndicator: true,
                                      onPressed: () async {
                                        _model.apiResult6nl =
                                            await ApiOrdersFollowersGroup
                                                .orderFollowedCall
                                                .call(
                                          orderId: widget.orderParentId,
                                          userId: FFAppState().asUserCurrent.id,
                                        );
                                        if ((_model.apiResult6nl?.succeeded ??
                                            true)) {
                                          await OrdersFollowersTable().delete(
                                            matchingRows: (rows) => rows.eq(
                                              'id',
                                              ApiOrdersFollowersGroup
                                                  .orderFollowedCall
                                                  .id(
                                                (_model.apiResult6nl
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                            ),
                                          );
                                          setState(() {
                                            _model.isFollowed = false;
                                          });
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Removido dos seus Favoritos',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .backgroundComponents,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .warning,
                                            ),
                                          );
                                        }

                                        setState(() {});
                                      },
                                    ),
                                ],
                              ),
                            ].divide(const SizedBox(width: 8.0)),
                          ),
                          AlignedTooltip(
                            content: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  containerVOrdersRow!.priorityDescription!,
                                  style: FlutterFlowTheme.of(context).bodyLarge,
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
                            child: wrapWithModel(
                              model: _model.cpOPriorityModel,
                              updateCallback: () => setState(() {}),
                              child: CpOPriorityWidget(
                                priorityId: valueOrDefault<int>(
                                  containerVOrdersRow.priorityId,
                                  1,
                                ),
                                priorityDescription: valueOrDefault<String>(
                                  containerVOrdersRow.priorityDescription,
                                  '.',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                      containerVOrdersRow.unitId,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Text(
                                valueOrDefault<String>(
                                  containerVOrdersRow.unitDescription,
                                  '.',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation3']!),
                          ),
                          SelectionArea(
                              child: Text(
                            valueOrDefault<String>(
                              containerVOrdersRow.assetTagDescription,
                              '.',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          )).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation4']!),
                          SelectionArea(
                              child: Text(
                            valueOrDefault<String>(
                              containerVOrdersRow.requestedServices,
                              '.',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          )).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation5']!),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    wrapWithModel(
                      model: _model.cpOStatusesModel,
                      updateCallback: () => setState(() {}),
                      child: CpOStatusesWidget(
                        cpStatusId: valueOrDefault<int>(
                          containerVOrdersRow.statusId,
                          1,
                        ),
                        cpStatusDescription: valueOrDefault<String>(
                          containerVOrdersRow.statusDescription,
                          '.',
                        ),
                      ),
                    ),
                    Text(
                      '${valueOrDefault<String>(
                        dateTimeFormat(
                            'd/M/y H:mm', containerVOrdersRow.statusDate),
                        '.',
                      )} h',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation6']!),
                  ].divide(const SizedBox(width: 8.0)),
                ),
                Divider(
                  height: 12.0,
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).primaryText,
                ).animateOnPageLoad(
                    animationsMap['dividerOnPageLoadAnimation']!),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Requisitante',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation7']!),
                          Text(
                            valueOrDefault<String>(
                              containerVOrdersRow.requesterTeamCode,
                              '.',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation8']!),
                          Text(
                            valueOrDefault<String>(
                              containerVOrdersRow.requesterPhone,
                              '.',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation9']!),
                          Text(
                            '${valueOrDefault<String>(
                              dateTimeFormat('d/M/y H:mm',
                                  containerVOrdersRow.requesterDate),
                              '.',
                            )} h',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation10']!),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [],
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
              ].divide(const SizedBox(height: 8.0)),
            ),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
      },
    );
  }
}
