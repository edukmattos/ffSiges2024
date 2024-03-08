import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/orders/cp_order_parent_status_card/cp_order_parent_status_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'cp_order_card_map_list_item_model.dart';
export 'cp_order_card_map_list_item_model.dart';

class CpOrderCardMapListItemWidget extends StatefulWidget {
  const CpOrderCardMapListItemWidget({
    super.key,
    required this.orderId,
  });

  final int? orderId;

  @override
  State<CpOrderCardMapListItemWidget> createState() =>
      _CpOrderCardMapListItemWidgetState();
}

class _CpOrderCardMapListItemWidgetState
    extends State<CpOrderCardMapListItemWidget> with TickerProviderStateMixin {
  late CpOrderCardMapListItemModel _model;

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
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpOrderCardMapListItemModel());

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
              ].divide(const SizedBox(height: 8.0)),
            ),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
      },
    );
  }
}
