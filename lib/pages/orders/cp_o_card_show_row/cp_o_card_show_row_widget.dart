import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_o_priority_widget.dart';
import '/components/cp_o_statuses_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'cp_o_card_show_row_model.dart';
export 'cp_o_card_show_row_model.dart';

class CpOCardShowRowWidget extends StatefulWidget {
  const CpOCardShowRowWidget({
    super.key,
    required this.orderId,
  });

  final int? orderId;

  @override
  State<CpOCardShowRowWidget> createState() => _CpOCardShowRowWidgetState();
}

class _CpOCardShowRowWidgetState extends State<CpOCardShowRowWidget>
    with TickerProviderStateMixin {
  late CpOCardShowRowModel _model;

  LatLng? currentUserLocationValue;

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
    'textOnPageLoadAnimation12': AnimationInfo(
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
    'textOnPageLoadAnimation13': AnimationInfo(
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
    'textOnPageLoadAnimation14': AnimationInfo(
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
    'textOnPageLoadAnimation15': AnimationInfo(
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
    'textOnPageLoadAnimation16': AnimationInfo(
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
    _model = createModel(context, () => CpOCardShowRowModel());

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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w600,
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
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation2']!),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.cpOPriorityModel,
                            updateCallback: () => setState(() {}),
                            child: CpOPriorityWidget(
                              priorityId: valueOrDefault<int>(
                                containerVOrdersRow?.priorityId,
                                1,
                              ),
                              priorityDescription: valueOrDefault<String>(
                                containerVOrdersRow?.priorityDescription,
                                '.',
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
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation3']!),
                          ),
                          Text(
                            valueOrDefault<String>(
                              containerVOrdersRow?.assetTagDescription,
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
                              animationsMap['textOnPageLoadAnimation4']!),
                          Text(
                            valueOrDefault<String>(
                              containerVOrdersRow?.requestedServices,
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
                              animationsMap['textOnPageLoadAnimation5']!),
                          Align(
                            alignment: const AlignmentDirectional(1.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                containerVOrdersRow?.causeDescription,
                                '.',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation6']!),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 12.0,
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).secondaryText,
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
                                          .primaryText,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  containerVOrdersRow?.requesterName,
                                  '.',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation7']!),
                              Text(
                                valueOrDefault<String>(
                                  containerVOrdersRow?.requesterTeamCode,
                                  '.',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation8']!),
                              Text(
                                valueOrDefault<String>(
                                  containerVOrdersRow?.requesterPhone,
                                  '.',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation9']!),
                              Text(
                                '${valueOrDefault<String>(
                                  dateTimeFormat('d/M/y H:mm',
                                      containerVOrdersRow?.requesterDate),
                                  '.',
                                )} h',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation10']!),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Responsável',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                containerVOrdersRow?.teamLeaderNameShort,
                                '.',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation11']!),
                            Text(
                              valueOrDefault<String>(
                                containerVOrdersRow?.teamCode,
                                '.',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation12']!),
                            Text(
                              valueOrDefault<String>(
                                containerVOrdersRow?.contractDescription,
                                '.',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation13']!),
                            Text(
                              valueOrDefault<String>(
                                containerVOrdersRow?.contractDescription,
                                '.',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation14']!),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '${valueOrDefault<String>(
                                    dateTimeFormat('d/M/y H:mm',
                                        containerVOrdersRow?.statusDate),
                                    '.',
                                  )} h',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                ).animateOnPageLoad(animationsMap[
                                    'textOnPageLoadAnimation15']!),
                                Text(
                                  valueOrDefault<String>(
                                    containerVOrdersRow
                                        ?.cancelReasonDescription,
                                    '.',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                ).animateOnPageLoad(animationsMap[
                                    'textOnPageLoadAnimation16']!),
                              ],
                            ),
                            wrapWithModel(
                              model: _model.cpOStatusesModel,
                              updateCallback: () => setState(() {}),
                              child: CpOStatusesWidget(
                                cpStatusId: valueOrDefault<int>(
                                  containerVOrdersRow?.statusId,
                                  1,
                                ),
                                cpStatusDescription: valueOrDefault<String>(
                                  containerVOrdersRow?.statusDescription,
                                  '.',
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ],
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if ((FFAppState().asUserCurrent.orderVisitIdInProgress ==
                            0) &&
                        (containerVOrdersRow?.teamLeaderId ==
                            FFAppState().asUserCurrent.id))
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () async {
                            currentUserLocationValue =
                                await getCurrentUserLocation(
                                    defaultLocation: const LatLng(0.0, 0.0));
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
                                'orderId': containerVOrdersRow?.id,
                                'dateStart': supaSerialize<DateTime>(
                                    getCurrentTimestamp),
                                'processingId': 1,
                                'statusId': 1,
                                'teamLeaderId': FFAppState().asUserCurrent.id,
                                'createdUserId': FFAppState().asUserCurrent.id,
                                'createdDate': supaSerialize<DateTime>(
                                    getCurrentTimestamp),
                                'orderParentId': containerVOrdersRow?.parentId,
                              });
                              shouldSetState = true;
                              await action_blocks.abOVSelected(
                                context,
                                abOrderVisitId: _model.resVisitAdded?.id,
                              );
                              setState(() {
                                FFAppState().updateAsUserCurrentStruct(
                                  (e) => e
                                    ..orderVisitIdInProgress =
                                        FFAppState().stOVSelected.first.id
                                    ..orderIdInProgress =
                                        FFAppState().stOSelected.first.id
                                    ..orderParentIdInProgress =
                                        FFAppState().stOPSelected.first.id
                                    ..orderVisitInProgressTeamLeaderId =
                                        FFAppState().asUserCurrent.id
                                    ..isAvailable = false
                                    ..isOrderVisitIdInProgress = true,
                                );
                              });
                              _model.resUsersTeamCurrent =
                                  await ApiUsersGroup.usersByTeamIdCall.call(
                                teamId: FFAppState().asUserCurrent.teamId,
                              );
                              shouldSetState = true;
                              setState(() {
                                FFAppState().stOVOpenTeamUsers = ((_model
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
                                FFAppState().stCounterLoopFinal =
                                    FFAppState().stOVOpenTeamUsers.length;
                              });
                              while (FFAppState().stCounterLoop <=
                                  FFAppState().stCounterLoopFinal) {
                                if (FFAppState().asUserCurrent.id ==
                                    FFAppState().stOVOpenTeamUsers[
                                        FFAppState().stCounterLoop - 1]) {
                                  await OrdersVisitsTeamsTable().insert({
                                    'orderVisitId':
                                        FFAppState().stOVSelected.first.id,
                                    'userId': FFAppState().asUserCurrent.id,
                                    'isLeader': true,
                                    'orderParentId':
                                        containerVOrdersRow?.parentId,
                                    'orderId': containerVOrdersRow?.id,
                                  });
                                } else {
                                  await OrdersVisitsTeamsTable().insert({
                                    'orderVisitId':
                                        FFAppState().stOVSelected.first.id,
                                    'userId': FFAppState().stOVOpenTeamUsers[
                                        FFAppState().stCounterLoop - 1],
                                    'isLeader': false,
                                    'orderParentId':
                                        containerVOrdersRow?.parentId,
                                    'orderId': containerVOrdersRow?.id,
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
                                        FFAppState().asUserCurrent.id,
                                    'isAvailable': false,
                                    'isOrderVisitIdInProgress': true,
                                  },
                                  matchingRows: (rows) => rows.eq(
                                    'id',
                                    FFAppState().stOVOpenTeamUsers[
                                        FFAppState().stCounterLoop - 1],
                                  ),
                                );
                                setState(() {
                                  FFAppState().stCounterLoop =
                                      FFAppState().stCounterLoop + 1;
                                });
                              }
                              setState(() {
                                FFAppState().stOVOpenTeamUsers = [];
                              });
                              await OrdersTable().update(
                                data: {
                                  'statusId': 5,
                                  'statusDate': supaSerialize<DateTime>(
                                      getCurrentTimestamp),
                                },
                                matchingRows: (rows) => rows.eq(
                                  'id',
                                  valueOrDefault<int>(
                                    FFAppState().stOVSelected.first.orderId,
                                    1,
                                  ),
                                ),
                              );
                              await action_blocks.abOSelected(
                                context,
                                abOrderId: valueOrDefault<int>(
                                  FFAppState().stOVSelected.first.orderId,
                                  1,
                                ),
                              );

                              context.pushNamed('pgDBUserOrders');

                              await Future.delayed(
                                  const Duration(milliseconds: 5000));
                              await action_blocks.abOPEvents(
                                context,
                                abOrderParentId: valueOrDefault<int>(
                                  FFAppState().stOVSelected.first.orderParentId,
                                  1,
                                ),
                                abTitle: 'OS ${valueOrDefault<String>(
                                  FFAppState().stOSelected.first.orderMask,
                                  'orderMask',
                                )} ${valueOrDefault<String>(
                                  FFAppState()
                                      .stOSelected
                                      .first
                                      .statusDescription,
                                  'statusDescription',
                                )}',
                                abBody:
                                    '${FFAppState().asUserCurrent.nameShort} iniciou atendimento em ${valueOrDefault<String>(
                                  FFAppState()
                                      .stOSelected
                                      .first
                                      .unitDescription,
                                  'unitDescription',
                                )}\\n${valueOrDefault<String>(
                                  FFAppState()
                                      .stOSelected
                                      .first
                                      .requestedServices,
                                  'requestedServices',
                                )}',
                              );
                              _model.instantTimerOVStart =
                                  InstantTimer.periodic(
                                duration: const Duration(milliseconds: 180000),
                                callback: (timer) async {
                                  currentUserLocationValue =
                                      await getCurrentUserLocation(
                                          defaultLocation: const LatLng(0.0, 0.0));
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text(functions
                                            .cfGetLatFromLatLng(
                                                currentUserLocationValue!)
                                            .toString()),
                                        content: Text(functions
                                            .cfGetLngFromLatLng(
                                                currentUserLocationValue!)
                                            .toString()),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  await OrdersVisitsTrackerTable().insert({
                                    'userId': FFAppState().asUserCurrent.id,
                                    'orderVisitId': FFAppState()
                                        .asUserCurrent
                                        .orderVisitIdInProgress,
                                    'latitude': functions.cfGetLatFromLatLng(
                                        currentUserLocationValue!),
                                    'longitude': functions.cfGetLngFromLatLng(
                                        currentUserLocationValue!),
                                    'createdDate': supaSerialize<DateTime>(
                                        getCurrentTimestamp),
                                    'device': '',
                                  });
                                },
                                startImmediately: true,
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
              ].divide(const SizedBox(height: 8.0)),
            ),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
      },
    );
  }
}
