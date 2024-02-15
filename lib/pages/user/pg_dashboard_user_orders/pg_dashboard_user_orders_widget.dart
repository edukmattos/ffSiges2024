import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_order_card_show/cp_order_card_show_widget.dart';
import '/pages/visits/cp_order_visit_card1_show/cp_order_visit_card1_show_widget.dart';
import '/actions/actions.dart' as action_blocks;
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
import 'pg_dashboard_user_orders_model.dart';
export 'pg_dashboard_user_orders_model.dart';

class PgDashboardUserOrdersWidget extends StatefulWidget {
  const PgDashboardUserOrdersWidget({super.key});

  @override
  State<PgDashboardUserOrdersWidget> createState() =>
      _PgDashboardUserOrdersWidgetState();
}

class _PgDashboardUserOrdersWidgetState
    extends State<PgDashboardUserOrdersWidget> with TickerProviderStateMixin {
  late PgDashboardUserOrdersModel _model;

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
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgDashboardUserOrdersModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (RootPageContext.isInactiveRootPage(context)) {
        return;
      }
      await action_blocks.abUserUpdate(
        context,
        abEmail: FFAppState().stUserCurrent.email,
        abAccessToken: FFAppState().stUserCurrent.accessToken,
      );
      await action_blocks.abFcmToken(context);
      await actions.caSupabaseDisconnect(
        'orders',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'orders',
        () async {
          setState(() => _model.requestCompleter1 = null);
          await _model.waitForRequestCompleted1();
          setState(() => _model.requestCompleter2 = null);
          await _model.waitForRequestCompleted2();
        },
      );
      if (FFAppState().stUserCurrent.statusId != 2) {
        if (FFAppState().stUserCurrent.statusId == 1) {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text('Ops ...'),
                content:
                    const Text('A sua conta encontra-se em Análise. Favor aguardar.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );
        } else {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text('Ops ...'),
                content: const Text('A sua conta encontra-se Inativa.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );
        }

        GoRouter.of(context).prepareAuthEvent();
        await authManager.signOut();
        GoRouter.of(context).clearRedirectLocation();

        _model.apiResultqrx = await ApiAuthGroup.authLogoutCall.call(
          accessToken: FFAppState().stUserCurrent.accessToken,
        );

        context.pushNamedAuth('pgSignin', context.mounted);

        return;
      }
      if (FFAppState().stUserCurrent.orderVisitIdInProgress > 0) {
        await action_blocks.abOrderVisitSelected(
          context,
          abOrderVisitId: FFAppState().stUserCurrent.orderVisitIdInProgress,
        );
        setState(() {});
        await action_blocks.abOrderSelected(
          context,
          abOrderId: valueOrDefault<int>(
            FFAppState().stOrderVisitSelected.first.id,
            1,
          ),
        );
        setState(() {});
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
                'Minhas Ordens',
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
          child: FutureBuilder<List<VOrdersCountByTeamleadersStatusesOpenRow>>(
            future: VOrdersCountByTeamleadersStatusesOpenTable().querySingleRow(
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
              List<VOrdersCountByTeamleadersStatusesOpenRow>
                  containerVOrdersCountByTeamleadersStatusesOpenRowList =
                  snapshot.data!;
              final containerVOrdersCountByTeamleadersStatusesOpenRow =
                  containerVOrdersCountByTeamleadersStatusesOpenRowList
                          .isNotEmpty
                      ? containerVOrdersCountByTeamleadersStatusesOpenRowList
                          .first
                      : null;
              return Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (containerVOrdersCountByTeamleadersStatusesOpenRow
                            ?.counterStatusOpen !=
                        null)
                      Container(
                        width: double.infinity,
                        height: 110.0,
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
                                      16.0, 4.0, 0.0, 0.0),
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
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        FutureBuilder<
                                            List<
                                                VOrdersCountByTeamsStatusesRow>>(
                                          future: (_model.requestCompleter1 ??=
                                                  Completer<
                                                      List<
                                                          VOrdersCountByTeamsStatusesRow>>()
                                                    ..complete(
                                                        VOrdersCountByTeamsStatusesTable()
                                                            .querySingleRow(
                                                      queryFn: (q) => q
                                                          .eq(
                                                            'teamId',
                                                            FFAppState()
                                                                .stUserCurrent
                                                                .teamId,
                                                          )
                                                          .eq(
                                                            'statusId',
                                                            3,
                                                          ),
                                                    )))
                                              .future,
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
                                            List<VOrdersCountByTeamsStatusesRow>
                                                containerScheduledCounterVOrdersCountByTeamsStatusesRowList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final containerScheduledCounterVOrdersCountByTeamsStatusesRow =
                                                containerScheduledCounterVOrdersCountByTeamsStatusesRowList
                                                        .isNotEmpty
                                                    ? containerScheduledCounterVOrdersCountByTeamsStatusesRowList
                                                        .first
                                                    : null;
                                            return Container(
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
                                                      'Agendadas',
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
                                                    containerScheduledCounterVOrdersCountByTeamsStatusesRow!
                                                        .counterStatus!
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
                                                      containerScheduledCounterVOrdersCountByTeamsStatusesRow.counterStatus! >
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
                                                        _model.lpsvOrdersView =
                                                            'scheduled';
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
                                                          Icons.calendar_month,
                                                          color: Colors.white,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation1']!);
                                          },
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        FutureBuilder<
                                            List<
                                                VOrdersCountByTeamsStatusesRow>>(
                                          future: (_model.requestCompleter2 ??=
                                                  Completer<
                                                      List<
                                                          VOrdersCountByTeamsStatusesRow>>()
                                                    ..complete(
                                                        VOrdersCountByTeamsStatusesTable()
                                                            .querySingleRow(
                                                      queryFn: (q) => q
                                                          .eq(
                                                            'teamId',
                                                            FFAppState()
                                                                .stUserCurrent
                                                                .teamId,
                                                          )
                                                          .eq(
                                                            'statusId',
                                                            5,
                                                          ),
                                                    )))
                                              .future,
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
                                            List<VOrdersCountByTeamsStatusesRow>
                                                containerSuspendedCounterVOrdersCountByTeamsStatusesRowList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final containerSuspendedCounterVOrdersCountByTeamsStatusesRow =
                                                containerSuspendedCounterVOrdersCountByTeamsStatusesRowList
                                                        .isNotEmpty
                                                    ? containerSuspendedCounterVOrdersCountByTeamsStatusesRowList
                                                        .first
                                                    : null;
                                            return Container(
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
                                                      'Suspensas',
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
                                                    containerSuspendedCounterVOrdersCountByTeamsStatusesRow!
                                                        .counterStatus!
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
                                                      containerSuspendedCounterVOrdersCountByTeamsStatusesRow.counterStatus! >
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
                                                        _model.lpsvOrdersView =
                                                            'suspended';
                                                      });
                                                    },
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: const Color(0xFF595555),
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
                                                          Icons.pause_sharp,
                                                          color: Colors.white,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation2']!);
                                          },
                                        ),
                                      ],
                                    ),
                                  ].divide(const SizedBox(width: 12.0)),
                                ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if ((FFAppState()
                                          .stUserCurrent
                                          .orderVisitIdInProgress >
                                      0) &&
                                  (FFAppState().stUserCurrent.id ==
                                      FFAppState()
                                          .stUserCurrent
                                          .orderVisitInProgressTeamLeaderId))
                                FutureBuilder<List<VOrdersVisitsRow>>(
                                  future: VOrdersVisitsTable().querySingleRow(
                                    queryFn: (q) => q.eq(
                                      'id',
                                      FFAppState()
                                          .stUserCurrent
                                          .orderVisitIdInProgress,
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
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<VOrdersVisitsRow>
                                        colInProgressVOrdersVisitsRowList =
                                        snapshot.data!;
                                    final colInProgressVOrdersVisitsRow =
                                        colInProgressVOrdersVisitsRowList
                                                .isNotEmpty
                                            ? colInProgressVOrdersVisitsRowList
                                                .first
                                            : null;
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Atendimento em ANDAMENTO',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge,
                                        ),
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
                                                  FFAppState()
                                                      .stUserCurrent
                                                      .orderVisitIdInProgress,
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
                                          },
                                          child: wrapWithModel(
                                            model: _model
                                                .cpOrderVisitCard1ShowModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: CpOrderVisitCard1ShowWidget(
                                              orderId: FFAppState()
                                                  .stUserCurrent
                                                  .orderIdInProgress,
                                              visitId: FFAppState()
                                                  .stUserCurrent
                                                  .orderVisitIdInProgress,
                                            ),
                                          ),
                                        ),
                                      ]
                                          .divide(const SizedBox(height: 12.0))
                                          .addToStart(const SizedBox(height: 12.0)),
                                    );
                                  },
                                ),
                              if (containerVOrdersCountByTeamleadersStatusesOpenRow
                                      ?.counterStatusOpen !=
                                  null)
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      if (_model.lpsvOrdersView ==
                                          'scheduled') {
                                        return SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              FutureBuilder<List<VOrdersRow>>(
                                                future:
                                                    VOrdersTable().queryRows(
                                                  queryFn: (q) => q
                                                      .eq(
                                                        'statusId',
                                                        3,
                                                      )
                                                      .eq(
                                                        'teamLeaderId',
                                                        FFAppState()
                                                            .stUserCurrent
                                                            .id,
                                                      )
                                                      .order('statusDate',
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
                                                  List<VOrdersRow>
                                                      listViewScheduledVOrdersRowList =
                                                      snapshot.data!;
                                                  return ListView.separated(
                                                    padding:
                                                        const EdgeInsets.fromLTRB(
                                                      0,
                                                      12.0,
                                                      0,
                                                      0,
                                                    ),
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        listViewScheduledVOrdersRowList
                                                            .length,
                                                    separatorBuilder: (_, __) =>
                                                        const SizedBox(height: 12.0),
                                                    itemBuilder: (context,
                                                        listViewScheduledIndex) {
                                                      final listViewScheduledVOrdersRow =
                                                          listViewScheduledVOrdersRowList[
                                                              listViewScheduledIndex];
                                                      return CpOrderCardShowWidget(
                                                        key: Key(
                                                            'Keyn3b_${listViewScheduledIndex}_of_${listViewScheduledVOrdersRowList.length}'),
                                                        orderId:
                                                            listViewScheduledVOrdersRow
                                                                .id!,
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        );
                                      } else if (_model.lpsvOrdersView ==
                                          'suspended') {
                                        return SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              FutureBuilder<List<VOrdersRow>>(
                                                future:
                                                    VOrdersTable().queryRows(
                                                  queryFn: (q) => q
                                                      .eq(
                                                        'statusId',
                                                        5,
                                                      )
                                                      .eq(
                                                        'teamLeaderId',
                                                        FFAppState()
                                                            .stUserCurrent
                                                            .id,
                                                      )
                                                      .order('statusDate',
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
                                                  List<VOrdersRow>
                                                      listViewSuspendedVOrdersRowList =
                                                      snapshot.data!;
                                                  return ListView.separated(
                                                    padding:
                                                        const EdgeInsets.fromLTRB(
                                                      0,
                                                      12.0,
                                                      0,
                                                      0,
                                                    ),
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        listViewSuspendedVOrdersRowList
                                                            .length,
                                                    separatorBuilder: (_, __) =>
                                                        const SizedBox(height: 12.0),
                                                    itemBuilder: (context,
                                                        listViewSuspendedIndex) {
                                                      final listViewSuspendedVOrdersRow =
                                                          listViewSuspendedVOrdersRowList[
                                                              listViewSuspendedIndex];
                                                      return CpOrderCardShowWidget(
                                                        key: Key(
                                                            'Keyb36_${listViewSuspendedIndex}_of_${listViewSuspendedVOrdersRowList.length}'),
                                                        orderId:
                                                            listViewSuspendedVOrdersRow
                                                                .id!,
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        );
                                      } else {
                                        return Text(
                                          ' ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      }
                                    },
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (containerVOrdersCountByTeamleadersStatusesOpenRow
                            ?.counterStatusOpen ==
                        null)
                      Flexible(
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
                                      'Não há registro de Serviços pendentes.',
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
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
