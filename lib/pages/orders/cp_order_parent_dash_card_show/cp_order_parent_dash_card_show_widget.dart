import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_order_priority_widget.dart';
import '/components/cp_orders_statuses_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/md_order_parent_menu_options/md_order_parent_menu_options_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'cp_order_parent_dash_card_show_model.dart';
export 'cp_order_parent_dash_card_show_model.dart';

class CpOrderParentDashCardShowWidget extends StatefulWidget {
  const CpOrderParentDashCardShowWidget({
    super.key,
    required this.orderId,
  });

  final int? orderId;

  @override
  State<CpOrderParentDashCardShowWidget> createState() =>
      _CpOrderParentDashCardShowWidgetState();
}

class _CpOrderParentDashCardShowWidgetState
    extends State<CpOrderParentDashCardShowWidget>
    with TickerProviderStateMixin {
  late CpOrderParentDashCardShowModel _model;

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
    _model = createModel(context, () => CpOrderParentDashCardShowModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultxzh =
          await ApiOrdersFollowersGroup.orderFollowedCall.call(
        orderId: widget.orderId,
        userId: FFAppState().stUserCurrent.id,
      );
      if ((_model.apiResultxzh?.succeeded ?? true)) {
        if (ApiOrdersFollowersGroup.orderFollowedCall.orderId(
              (_model.apiResultxzh?.jsonBody ?? ''),
            ) ==
            widget.orderId) {
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

    return FutureBuilder<List<VOrdersParentRow>>(
      future: VOrdersParentTable().querySingleRow(
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
        List<VOrdersParentRow> containerVOrdersParentRowList = snapshot.data!;
        final containerVOrdersParentRow =
            containerVOrdersParentRowList.isNotEmpty
                ? containerVOrdersParentRowList.first
                : null;
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryText,
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
                              'pgOrderParentShow',
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
                              containerVOrdersParentRow?.orderMask,
                              '.',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation1']!),
                        Text(
                          valueOrDefault<String>(
                            containerVOrdersParentRow?.typeCode,
                            '.',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation2']!),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.cpOrderPriorityModel,
                          updateCallback: () => setState(() {}),
                          child: CpOrderPriorityWidget(
                            priorityId: containerVOrdersParentRow!.priorityId!,
                            priorityDescription:
                                containerVOrdersParentRow.priorityDescription!,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
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
                                    'orderId': widget.orderId,
                                    'userId': FFAppState().stUserCurrent.id,
                                  });
                                  setState(() {
                                    _model.isFollowed = true;
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Adicionado aos seus Favoritos',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
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
                                  color: FlutterFlowTheme.of(context).success,
                                  size: 30.0,
                                ),
                                showLoadingIndicator: true,
                                onPressed: () async {
                                  _model.apiResult6nl =
                                      await ApiOrdersFollowersGroup
                                          .orderFollowedCall
                                          .call(
                                    orderId: widget.orderId,
                                    userId: FFAppState().stUserCurrent.id,
                                  );
                                  if ((_model.apiResult6nl?.succeeded ??
                                      true)) {
                                    await OrdersFollowersTable().delete(
                                      matchingRows: (rows) => rows.eq(
                                        'id',
                                        ApiOrdersFollowersGroup
                                            .orderFollowedCall
                                            .id(
                                          (_model.apiResult6nl?.jsonBody ?? ''),
                                        ),
                                      ),
                                    );
                                    setState(() {
                                      _model.isFollowed = false;
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Removido dos seus Favoritos',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .backgroundComponents,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .warning,
                                      ),
                                    );
                                  }

                                  setState(() {});
                                },
                              ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: FlutterFlowIconButton(
                                borderRadius: 25.0,
                                buttonSize: 50.0,
                                icon: FaIcon(
                                  FontAwesomeIcons.ellipsisV,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 30.0,
                                ),
                                showLoadingIndicator: true,
                                onPressed: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    useSafeArea: true,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: MdOrderParentMenuOptionsWidget(
                                          statusId: containerVOrdersParentRow.statusId!,
                                          orderId:
                                              containerVOrdersParentRow.id!,
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                              ),
                            ),
                          ],
                        ),
                      ].divide(const SizedBox(width: 8.0)),
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
                                      containerVOrdersParentRow.unitId,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Text(
                                valueOrDefault<String>(
                                  containerVOrdersParentRow.unitDescription,
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
                          SelectionArea(
                              child: Text(
                            valueOrDefault<String>(
                              containerVOrdersParentRow.assetTagDescription,
                              'Setor Não Informado',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0x9AFFFFFF),
                                ),
                          )).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation4']!),
                          SelectionArea(
                              child: Text(
                            valueOrDefault<String>(
                              containerVOrdersParentRow.requestedServices,
                              '.',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0x9AFFFFFF),
                                ),
                          )).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation5']!),
                        ],
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
                            'Requisitante',
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
                              containerVOrdersParentRow.requesterName,
                              '.',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0x9AFFFFFF),
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation6']!),
                          Text(
                            valueOrDefault<String>(
                              containerVOrdersParentRow.requesterTeamCode,
                              '.',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0x9AFFFFFF),
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation7']!),
                          Text(
                            valueOrDefault<String>(
                              containerVOrdersParentRow.requesterPhone,
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
                            '${valueOrDefault<String>(
                              dateTimeFormat('d/M H:mm',
                                  containerVOrdersParentRow.requesterDate),
                              '.',
                            )} h',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0x9AFFFFFF),
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation9']!),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${valueOrDefault<String>(
                                  dateTimeFormat('d/M H:mm',
                                      containerVOrdersParentRow.statusDate),
                                  '.',
                                )} h',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0x9AFFFFFF),
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation10']!),
                              wrapWithModel(
                                model: _model.cpOrdersStatusesModel,
                                updateCallback: () => setState(() {}),
                                child: CpOrdersStatusesWidget(
                                  cpStatusId:
                                      containerVOrdersParentRow.statusId!,
                                  cpStatusDescription:
                                      containerVOrdersParentRow.statusDescription!,
                                ),
                              ),
                            ].divide(const SizedBox(width: 8.0)),
                          ),
                        ],
                      ),
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
