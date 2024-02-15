import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/visits/cp_order_visit_card1_show/cp_order_visit_card1_show_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_dashboard_user_visits_model.dart';
export 'pg_dashboard_user_visits_model.dart';

class PgDashboardUserVisitsWidget extends StatefulWidget {
  const PgDashboardUserVisitsWidget({super.key});

  @override
  State<PgDashboardUserVisitsWidget> createState() =>
      _PgDashboardUserVisitsWidgetState();
}

class _PgDashboardUserVisitsWidgetState
    extends State<PgDashboardUserVisitsWidget> with TickerProviderStateMixin {
  late PgDashboardUserVisitsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 20.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgDashboardUserVisitsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.caSupabaseDisconnect(
        'ordersVisits',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'ordersVisits',
        () async {
          setState(() => _model.requestCompleter3 = null);
          await _model.waitForRequestCompleted3();
          setState(() => _model.requestCompleter1 = null);
          await _model.waitForRequestCompleted1();
          setState(() => _model.requestCompleter2 = null);
          await _model.waitForRequestCompleted2();
        },
      );
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
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        endDrawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.cpMenuModel,
            updateCallback: () => setState(() {}),
            child: const CpMenuWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Atendimentos',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              wrapWithModel(
                model: _model.cpNotificationsIconModel,
                updateCallback: () => setState(() {}),
                child: const CpNotificationsIconWidget(),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(),
            child: FutureBuilder<List<VOrdersVisitsCountByTeamleaderOpenRow>>(
              future: VOrdersVisitsCountByTeamleaderOpenTable().querySingleRow(
                queryFn: (q) => q.eq(
                  'teamLeaderId',
                  FFAppState().stUserCurrent.id,
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
                List<VOrdersVisitsCountByTeamleaderOpenRow>
                    columnVOrdersVisitsCountByTeamleaderOpenRowList =
                    snapshot.data!;
                final columnVOrdersVisitsCountByTeamleaderOpenRow =
                    columnVOrdersVisitsCountByTeamleaderOpenRowList.isNotEmpty
                        ? columnVOrdersVisitsCountByTeamleaderOpenRowList.first
                        : null;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (columnVOrdersVisitsCountByTeamleaderOpenRow
                            ?.counterProcessing !=
                        null)
                      Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFAppState().stUserCurrent.teamCode,
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xB3FFFFFF),
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation']!),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FutureBuilder<
                                        List<
                                            VOrdersVisitsCountByTeamleaderOpenRow>>(
                                      future:
                                          VOrdersVisitsCountByTeamleaderOpenTable()
                                              .querySingleRow(
                                        queryFn: (q) => q
                                            .eq(
                                              'teamLeaderId',
                                              FFAppState().stUserCurrent.id,
                                            )
                                            .eq(
                                              'processingId',
                                              1,
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
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<VOrdersVisitsCountByTeamleaderOpenRow>
                                            columnVOrdersVisitsCountByTeamleaderOpenRowList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final columnVOrdersVisitsCountByTeamleaderOpenRow =
                                            columnVOrdersVisitsCountByTeamleaderOpenRowList
                                                    .isNotEmpty
                                                ? columnVOrdersVisitsCountByTeamleaderOpenRowList
                                                    .first
                                                : null;
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: 60.0,
                                              height: 60.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: AlignedTooltip(
                                                content: Padding(
                                                    padding:
                                                        const EdgeInsets.all(4.0),
                                                    child: Text(
                                                      'Rascunho',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge,
                                                    )),
                                                offset: 4.0,
                                                preferredDirection:
                                                    AxisDirection.down,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                elevation: 4.0,
                                                tailBaseWidth: 24.0,
                                                tailLength: 12.0,
                                                waitDuration:
                                                    const Duration(milliseconds: 100),
                                                showDuration: const Duration(
                                                    milliseconds: 1500),
                                                triggerMode:
                                                    TooltipTriggerMode.tap,
                                                child: badges.Badge(
                                                  badgeContent: Text(
                                                    columnVOrdersVisitsCountByTeamleaderOpenRow!
                                                        .counterProcessing!
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                  ),
                                                  showBadge:
                                                      columnVOrdersVisitsCountByTeamleaderOpenRow.counterProcessing! >
                                                          0,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent4,
                                                  elevation: 4.0,
                                                  padding: const EdgeInsets.all(8.0),
                                                  position: badges.BadgePosition
                                                      .topEnd(),
                                                  animationType: badges
                                                      .BadgeAnimationType.scale,
                                                  toAnimate: true,
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      setState(() {
                                                        _model.lpsvVisitsProcessingView =
                                                            'draft';
                                                      });
                                                    },
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      child: const Padding(
                                                        padding: EdgeInsets.all(
                                                            12.0),
                                                        child: Icon(
                                                          Icons.draw,
                                                          color: Colors.white,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation1']!),
                                          ],
                                        );
                                      },
                                    ),
                                    FutureBuilder<
                                        List<
                                            VOrdersVisitsCountByTeamleaderProcessingRow>>(
                                      future:
                                          VOrdersVisitsCountByTeamleaderProcessingTable()
                                              .querySingleRow(
                                        queryFn: (q) => q
                                            .eq(
                                              'teamLeaderId',
                                              FFAppState().stUserCurrent.id,
                                            )
                                            .eq(
                                              'processingId',
                                              2,
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
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<VOrdersVisitsCountByTeamleaderProcessingRow>
                                            columnVOrdersVisitsCountByTeamleaderProcessingRowList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final columnVOrdersVisitsCountByTeamleaderProcessingRow =
                                            columnVOrdersVisitsCountByTeamleaderProcessingRowList
                                                    .isNotEmpty
                                                ? columnVOrdersVisitsCountByTeamleaderProcessingRowList
                                                    .first
                                                : null;
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: 60.0,
                                              height: 60.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: AlignedTooltip(
                                                content: Padding(
                                                    padding:
                                                        const EdgeInsets.all(4.0),
                                                    child: Text(
                                                      'Reportadas',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge,
                                                    )),
                                                offset: 4.0,
                                                preferredDirection:
                                                    AxisDirection.down,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                elevation: 4.0,
                                                tailBaseWidth: 24.0,
                                                tailLength: 12.0,
                                                waitDuration:
                                                    const Duration(milliseconds: 100),
                                                showDuration: const Duration(
                                                    milliseconds: 1500),
                                                triggerMode:
                                                    TooltipTriggerMode.tap,
                                                child: badges.Badge(
                                                  badgeContent: Text(
                                                    columnVOrdersVisitsCountByTeamleaderProcessingRow!
                                                        .counterProcessing!
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                  ),
                                                  showBadge:
                                                      columnVOrdersVisitsCountByTeamleaderProcessingRow.counterProcessing! >
                                                          0,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent4,
                                                  elevation: 4.0,
                                                  padding: const EdgeInsets.all(8.0),
                                                  position: badges.BadgePosition
                                                      .topEnd(),
                                                  animationType: badges
                                                      .BadgeAnimationType.scale,
                                                  toAnimate: true,
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      setState(() {
                                                        _model.lpsvVisitsProcessingView =
                                                            'reported';
                                                      });
                                                    },
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      child: const Padding(
                                                        padding: EdgeInsets.all(
                                                            12.0),
                                                        child: Icon(
                                                          Icons.report_problem,
                                                          color: Colors.white,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation2']!),
                                          ],
                                        );
                                      },
                                    ),
                                    FutureBuilder<
                                        List<
                                            VOrdersVisitsCountByTeamleaderProcessingRow>>(
                                      future:
                                          VOrdersVisitsCountByTeamleaderProcessingTable()
                                              .querySingleRow(
                                        queryFn: (q) => q
                                            .eq(
                                              'teamLeaderId',
                                              FFAppState().stUserCurrent.id,
                                            )
                                            .eq(
                                              'processingId',
                                              3,
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
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<VOrdersVisitsCountByTeamleaderProcessingRow>
                                            columnVOrdersVisitsCountByTeamleaderProcessingRowList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final columnVOrdersVisitsCountByTeamleaderProcessingRow =
                                            columnVOrdersVisitsCountByTeamleaderProcessingRowList
                                                    .isNotEmpty
                                                ? columnVOrdersVisitsCountByTeamleaderProcessingRowList
                                                    .first
                                                : null;
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: 60.0,
                                              height: 60.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: AlignedTooltip(
                                                content: Padding(
                                                    padding:
                                                        const EdgeInsets.all(4.0),
                                                    child: Text(
                                                      'Reprovadas',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge,
                                                    )),
                                                offset: 4.0,
                                                preferredDirection:
                                                    AxisDirection.down,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                elevation: 4.0,
                                                tailBaseWidth: 24.0,
                                                tailLength: 12.0,
                                                waitDuration:
                                                    const Duration(milliseconds: 100),
                                                showDuration: const Duration(
                                                    milliseconds: 1500),
                                                triggerMode:
                                                    TooltipTriggerMode.tap,
                                                child: badges.Badge(
                                                  badgeContent: Text(
                                                    columnVOrdersVisitsCountByTeamleaderProcessingRow!
                                                        .counterProcessing!
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                  ),
                                                  showBadge:
                                                      columnVOrdersVisitsCountByTeamleaderProcessingRow.counterProcessing! >
                                                          0,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent4,
                                                  elevation: 4.0,
                                                  padding: const EdgeInsets.all(8.0),
                                                  position: badges.BadgePosition
                                                      .topEnd(),
                                                  animationType: badges
                                                      .BadgeAnimationType.scale,
                                                  toAnimate: true,
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      setState(() {
                                                        _model.lpsvVisitsProcessingView =
                                                            'disapproved';
                                                      });
                                                    },
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      child: const Padding(
                                                        padding: EdgeInsets.all(
                                                            12.0),
                                                        child: Icon(
                                                          Icons.thumb_down,
                                                          color: Colors.white,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation3']!),
                                          ],
                                        );
                                      },
                                    ),
                                  ].divide(const SizedBox(width: 12.0)),
                                ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                    if (FFAppState().stUserCurrent.orderVisitIdInProgress > 0)
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FutureBuilder<List<VOrdersVisitsRow>>(
                          future: VOrdersVisitsTable().querySingleRow(
                            queryFn: (q) => q.eq(
                              'id',
                              FFAppState().stUserCurrent.orderVisitIdInProgress,
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
                            List<VOrdersVisitsRow> columnVOrdersVisitsRowList =
                                snapshot.data!;
                            final columnVOrdersVisitsRow =
                                columnVOrdersVisitsRowList.isNotEmpty
                                    ? columnVOrdersVisitsRowList.first
                                    : null;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'pgOrderVisitShow',
                                      queryParameters: {
                                        'visitId': serializeParam(
                                          columnVOrdersVisitsRow.id,
                                          ParamType.int,
                                        ),
                                        'orderId': serializeParam(
                                          0,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.cpOrderVisitCard1ShowModel1,
                                    updateCallback: () => setState(() {}),
                                    child: CpOrderVisitCard1ShowWidget(
                                      orderId: columnVOrdersVisitsRow!.orderId!,
                                      visitId: columnVOrdersVisitsRow.id!,
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            );
                          },
                        ),
                      ),
                    if (columnVOrdersVisitsCountByTeamleaderOpenRow
                            ?.counterProcessing !=
                        null)
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: FutureBuilder<
                              List<VOrdersVisitsCountByTeamleaderOpenRow>>(
                            future: VOrdersVisitsCountByTeamleaderOpenTable()
                                .querySingleRow(
                              queryFn: (q) => q.eq(
                                'teamLeaderId',
                                FFAppState().stUserCurrent.id,
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
                              List<VOrdersVisitsCountByTeamleaderOpenRow>
                                  conditionalBuilderVOrdersVisitsCountByTeamleaderOpenRowList =
                                  snapshot.data!;
                              // Return an empty Container when the item does not exist.
                              if (snapshot.data!.isEmpty) {
                                return Container();
                              }
                              final conditionalBuilderVOrdersVisitsCountByTeamleaderOpenRow =
                                  conditionalBuilderVOrdersVisitsCountByTeamleaderOpenRowList
                                          .isNotEmpty
                                      ? conditionalBuilderVOrdersVisitsCountByTeamleaderOpenRowList
                                          .first
                                      : null;
                              return Builder(
                                builder: (context) {
                                  if (conditionalBuilderVOrdersVisitsCountByTeamleaderOpenRow!
                                          .counterProcessing! >
                                      0) {
                                    return Container(
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            if (_model
                                                    .lpsvVisitsProcessingView ==
                                                'draft') {
                                              return SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    FutureBuilder<
                                                        List<
                                                            VOrdersVisitsOpenRow>>(
                                                      future: (_model
                                                                  .requestCompleter3 ??=
                                                              Completer<
                                                                  List<
                                                                      VOrdersVisitsOpenRow>>()
                                                                ..complete(
                                                                    VOrdersVisitsOpenTable()
                                                                        .queryRows(
                                                                  queryFn:
                                                                      (q) => q
                                                                          .eq(
                                                                            'teamLeaderId',
                                                                            FFAppState().stUserCurrent.id,
                                                                          )
                                                                          .eq(
                                                                            'processingId',
                                                                            1,
                                                                          )
                                                                          .eq(
                                                                            'statusId',
                                                                            2,
                                                                          )
                                                                          .order(
                                                                              'dateStart',
                                                                              ascending: true),
                                                                )))
                                                          .future,
                                                      builder:
                                                          (context, snapshot) {
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
                                                        List<VOrdersVisitsOpenRow>
                                                            listViewVOrdersVisitsOpenRowList =
                                                            snapshot.data!;
                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            12.0,
                                                            0,
                                                            12.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listViewVOrdersVisitsOpenRowList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 12.0),
                                                          itemBuilder: (context,
                                                              listViewIndex) {
                                                            final listViewVOrdersVisitsOpenRow =
                                                                listViewVOrdersVisitsOpenRowList[
                                                                    listViewIndex];
                                                            return InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  'pgOrderVisitShow',
                                                                  queryParameters:
                                                                      {
                                                                    'visitId':
                                                                        serializeParam(
                                                                      listViewVOrdersVisitsOpenRow
                                                                          .visitId,
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                    'orderId':
                                                                        serializeParam(
                                                                      0,
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child:
                                                                  CpOrderVisitCard1ShowWidget(
                                                                key: Key(
                                                                    'Key1m9_${listViewIndex}_of_${listViewVOrdersVisitsOpenRowList.length}'),
                                                                orderId:
                                                                    listViewVOrdersVisitsOpenRow
                                                                        .orderId!,
                                                                visitId:
                                                                    listViewVOrdersVisitsOpenRow
                                                                        .visitId!,
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              );
                                            } else if (_model
                                                    .lpsvVisitsProcessingView ==
                                                'reported') {
                                              return SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    FutureBuilder<
                                                        List<
                                                            VOrdersVisitsOpenRow>>(
                                                      future: (_model
                                                                  .requestCompleter1 ??=
                                                              Completer<
                                                                  List<
                                                                      VOrdersVisitsOpenRow>>()
                                                                ..complete(
                                                                    VOrdersVisitsOpenTable()
                                                                        .queryRows(
                                                                  queryFn:
                                                                      (q) => q
                                                                          .eq(
                                                                            'teamLeaderId',
                                                                            FFAppState().stUserCurrent.id,
                                                                          )
                                                                          .eq(
                                                                            'processingId',
                                                                            2,
                                                                          )
                                                                          .eq(
                                                                            'statusId',
                                                                            2,
                                                                          )
                                                                          .order(
                                                                              'dateStart',
                                                                              ascending: true),
                                                                )))
                                                          .future,
                                                      builder:
                                                          (context, snapshot) {
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
                                                        List<VOrdersVisitsOpenRow>
                                                            listViewVOrdersVisitsOpenRowList =
                                                            snapshot.data!;
                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            12.0,
                                                            0,
                                                            12.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listViewVOrdersVisitsOpenRowList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 12.0),
                                                          itemBuilder: (context,
                                                              listViewIndex) {
                                                            final listViewVOrdersVisitsOpenRow =
                                                                listViewVOrdersVisitsOpenRowList[
                                                                    listViewIndex];
                                                            return InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  'pgOrderVisitShow',
                                                                  queryParameters:
                                                                      {
                                                                    'visitId':
                                                                        serializeParam(
                                                                      listViewVOrdersVisitsOpenRow
                                                                          .visitId,
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                    'orderId':
                                                                        serializeParam(
                                                                      0,
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child:
                                                                  CpOrderVisitCard1ShowWidget(
                                                                key: Key(
                                                                    'Keyw6i_${listViewIndex}_of_${listViewVOrdersVisitsOpenRowList.length}'),
                                                                orderId:
                                                                    listViewVOrdersVisitsOpenRow
                                                                        .orderId!,
                                                                visitId:
                                                                    listViewVOrdersVisitsOpenRow
                                                                        .visitId!,
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              );
                                            } else {
                                              return SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    FutureBuilder<
                                                        List<
                                                            VOrdersVisitsOpenRow>>(
                                                      future: (_model
                                                                  .requestCompleter2 ??=
                                                              Completer<
                                                                  List<
                                                                      VOrdersVisitsOpenRow>>()
                                                                ..complete(
                                                                    VOrdersVisitsOpenTable()
                                                                        .queryRows(
                                                                  queryFn:
                                                                      (q) => q
                                                                          .eq(
                                                                            'teamLeaderId',
                                                                            FFAppState().stUserCurrent.id,
                                                                          )
                                                                          .eq(
                                                                            'processingId',
                                                                            3,
                                                                          )
                                                                          .eq(
                                                                            'statusId',
                                                                            2,
                                                                          )
                                                                          .order(
                                                                              'dateStart',
                                                                              ascending: true),
                                                                )))
                                                          .future,
                                                      builder:
                                                          (context, snapshot) {
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
                                                        List<VOrdersVisitsOpenRow>
                                                            listViewVOrdersVisitsOpenRowList =
                                                            snapshot.data!;
                                                        return ListView
                                                            .separated(
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            12.0,
                                                            0,
                                                            12.0,
                                                          ),
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listViewVOrdersVisitsOpenRowList
                                                                  .length,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 12.0),
                                                          itemBuilder: (context,
                                                              listViewIndex) {
                                                            final listViewVOrdersVisitsOpenRow =
                                                                listViewVOrdersVisitsOpenRowList[
                                                                    listViewIndex];
                                                            return InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  'pgOrderVisitShow',
                                                                  queryParameters:
                                                                      {
                                                                    'visitId':
                                                                        serializeParam(
                                                                      listViewVOrdersVisitsOpenRow
                                                                          .visitId,
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                    'orderId':
                                                                        serializeParam(
                                                                      0,
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child:
                                                                  CpOrderVisitCard1ShowWidget(
                                                                key: Key(
                                                                    'Keye4j_${listViewIndex}_of_${listViewVOrdersVisitsOpenRowList.length}'),
                                                                orderId:
                                                                    listViewVOrdersVisitsOpenRow
                                                                        .orderId!,
                                                                visitId:
                                                                    listViewVOrdersVisitsOpenRow
                                                                        .visitId!,
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    );
                                  } else {
                                    return Visibility(
                                      visible:
                                          conditionalBuilderVOrdersVisitsCountByTeamleaderOpenRow
                                                  .counterProcessing !=
                                              null,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            30.0, 0.0, 30.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.solidThumbsUp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 72.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: Text(
                                                'Sem pendências',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                'Não há registro de Visitas pendentes pela sua Equipe.',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    if (columnVOrdersVisitsCountByTeamleaderOpenRow
                            ?.counterProcessing ==
                        null)
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const BoxDecoration(),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  30.0, 0.0, 30.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.solidThumbsUp,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 72.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Text(
                                      'Sem pendências',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      'Não há registro de Visitas pendentes.',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
