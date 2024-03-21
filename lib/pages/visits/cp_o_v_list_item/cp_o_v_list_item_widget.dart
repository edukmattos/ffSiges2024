import '/backend/supabase/supabase.dart';
import '/components/cp_o_priority_widget.dart';
import '/components/cp_o_statuses_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/visits/cp_o_v_processing_card/cp_o_v_processing_card_widget.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'cp_o_v_list_item_model.dart';
export 'cp_o_v_list_item_model.dart';

class CpOVListItemWidget extends StatefulWidget {
  const CpOVListItemWidget({
    super.key,
    int? ppOId,
    int? ppOVId,
  })  : ppOId = ppOId ?? 1,
        ppOVId = ppOVId ?? 1;

  final int ppOId;
  final int ppOVId;

  @override
  State<CpOVListItemWidget> createState() => _CpOVListItemWidgetState();
}

class _CpOVListItemWidgetState extends State<CpOVListItemWidget>
    with TickerProviderStateMixin {
  late CpOVListItemModel _model;

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
    _model = createModel(context, () => CpOVListItemModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        FutureBuilder<List<VOrdersRow>>(
          future: VOrdersTable().querySingleRow(
            queryFn: (q) => q.eq(
              'id',
              widget.ppOId,
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
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
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
                                  'pgOShow',
                                  queryParameters: {
                                    'orderId': serializeParam(
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.cpOPriorityModel,
                              updateCallback: () => setState(() {}),
                              child: const CpOPriorityWidget(),
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
                                  'assetTagDescription',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation4']!),
                              Text(
                                valueOrDefault<String>(
                                  containerVOrdersRow?.requestedServices,
                                  'team',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
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
                                      .labelMedium
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
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.cpOStatusesModel,
                          updateCallback: () => setState(() {}),
                          child: CpOStatusesWidget(
                            cpStatusId: containerVOrdersRow!.statusId!,
                            cpStatusDescription:
                                containerVOrdersRow.statusDescription!,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${valueOrDefault<String>(
                                dateTimeFormat('d/M/y H:mm',
                                    containerVOrdersRow.statusDate),
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
                                animationsMap['textOnPageLoadAnimation7']!),
                            Text(
                              valueOrDefault<String>(
                                containerVOrdersRow.cancelReasonDescription,
                                '.',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation8']!),
                          ],
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
          },
        ),
        FutureBuilder<List<VOrdersVisitsRow>>(
          future: VOrdersVisitsTable().querySingleRow(
            queryFn: (q) => q.eq(
              'id',
              widget.ppOVId,
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
            return InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'pgOVShow',
                  queryParameters: {
                    'ppOVId': serializeParam(
                      widget.ppOVId,
                      ParamType.int,
                    ),
                    'ppOPId': serializeParam(
                      containerVOrdersVisitsRow.parentId,
                      ParamType.int,
                    ),
                    'ppProcessingId': serializeParam(
                      containerVOrdersVisitsRow.processingId,
                      ParamType.int,
                    ),
                    'ppUnitId': serializeParam(
                      containerVOrdersVisitsRow.unitId,
                      ParamType.int,
                    ),
                    'ppOId': serializeParam(
                      widget.ppOId,
                      ParamType.int,
                    ),
                  }.withoutNulls,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
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
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '# ${widget.ppOVId.toString()}',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Text(
                                          '${dateTimeFormat('d/M/y H:mm', containerVOrdersVisitsRow?.dateStart)} h',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Text(
                                          '${dateTimeFormat('d/M/y H:mm', containerVOrdersVisitsRow?.dateEnd)} h',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model:
                                              _model.cpOVProcessingCardModel1,
                                          updateCallback: () => setState(() {}),
                                          child: CpOVProcessingCardWidget(
                                            processingDescription:
                                                containerVOrdersVisitsRow!
                                                    .processingDescription!,
                                            processingId:
                                                containerVOrdersVisitsRow
                                                    .processingId!,
                                          ),
                                        ),
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
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: FutureBuilder<
                                            List<VOrdersVisitsTeamsRow>>(
                                          future: VOrdersVisitsTeamsTable()
                                              .queryRows(
                                            queryFn: (q) => q.eq(
                                              'orderVisitId',
                                              widget.ppOVId,
                                            ),
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
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  listViewVOrdersVisitsTeamsRowList
                                                      .length,
                                              separatorBuilder: (_, __) =>
                                                  const SizedBox(width: 8.0),
                                              itemBuilder:
                                                  (context, listViewIndex) {
                                                final listViewVOrdersVisitsTeamsRow =
                                                    listViewVOrdersVisitsTeamsRowList[
                                                        listViewIndex];
                                                return AlignedTooltip(
                                                  content: Padding(
                                                      padding:
                                                          const EdgeInsets.all(4.0),
                                                      child: Text(
                                                        listViewVOrdersVisitsTeamsRow
                                                            .nameShort!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                      )),
                                                  offset: 4.0,
                                                  preferredDirection:
                                                      AxisDirection.down,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  elevation: 4.0,
                                                  tailBaseWidth: 24.0,
                                                  tailLength: 12.0,
                                                  waitDuration: const Duration(
                                                      milliseconds: 100),
                                                  showDuration: const Duration(
                                                      milliseconds: 1500),
                                                  triggerMode:
                                                      TooltipTriggerMode.tap,
                                                  child: CpUserPicProfileWidget(
                                                    key: Key(
                                                        'Keyxec_${listViewIndex}_of_${listViewVOrdersVisitsTeamsRowList.length}'),
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
                                if (containerVOrdersVisitsRow.isCanceled ??
                                    true)
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  containerVOrdersVisitsRow
                                                      .orderCancelReasonDescription,
                                                  '.',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    containerVOrdersVisitsRow
                                                        .comments,
                                                    '.',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        wrapWithModel(
                                          model:
                                              _model.cpOVProcessingCardModel2,
                                          updateCallback: () => setState(() {}),
                                          child: const CpOVProcessingCardWidget(
                                            processingDescription: 'Cancelada',
                                            processingId: 3,
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                  ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
