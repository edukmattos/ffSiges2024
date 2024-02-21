import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_orders_statuses_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_order_card_show/cp_order_card_show_widget.dart';
import '/pages/visits/cp_order_visit_card1_show/cp_order_visit_card1_show_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
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
        () async {},
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
          child: FutureBuilder<List<VOrdersCountByTeamLeadersStatusesOpenRow>>(
            future: VOrdersCountByTeamLeadersStatusesOpenTable().querySingleRow(
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
              List<VOrdersCountByTeamLeadersStatusesOpenRow>
                  containerVOrdersCountByTeamLeadersStatusesOpenRowList =
                  snapshot.data!;
              final containerVOrdersCountByTeamLeadersStatusesOpenRow =
                  containerVOrdersCountByTeamLeadersStatusesOpenRowList
                          .isNotEmpty
                      ? containerVOrdersCountByTeamLeadersStatusesOpenRowList
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
                    if (containerVOrdersCountByTeamLeadersStatusesOpenRow
                            ?.counterTeamLeadersStatusOpen !=
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
                                    FutureBuilder<
                                        List<
                                            VOrdersCountByTeamLeadersStatusesOpenRow>>(
                                      future:
                                          VOrdersCountByTeamLeadersStatusesOpenTable()
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
                                        List<VOrdersCountByTeamLeadersStatusesOpenRow>
                                            containerScheduleVOrdersCountByTeamLeadersStatusesOpenRowList =
                                            snapshot.data!;
                                        final containerScheduleVOrdersCountByTeamLeadersStatusesOpenRow =
                                            containerScheduleVOrdersCountByTeamLeadersStatusesOpenRowList
                                                    .isNotEmpty
                                                ? containerScheduleVOrdersCountByTeamLeadersStatusesOpenRowList
                                                    .first
                                                : null;
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              _model.lspvOrderStatusId = 3;
                                            });
                                          },
                                          child: Container(
                                            width: 60.0,
                                            height: 60.0,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  _model.lspvOrderStatusId = 3;
                                                });
                                              },
                                              child: wrapWithModel(
                                                model: _model
                                                    .cpOrdersStatusesModel1,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: CpOrdersStatusesWidget(
                                                  cpStatusId:
                                                      _model.lspvOrderStatusId!,
                                                  cpStatusDescription:
                                                      'Não Programada',
                                                  cpBadge:
                                                      containerScheduleVOrdersCountByTeamLeadersStatusesOpenRow!
                                                          .counterTeamLeadersStatusOpen!,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation1']!);
                                      },
                                    ),
                                    FutureBuilder<
                                        List<VDashAdminOrdersStatus3Row>>(
                                      future: VDashAdminOrdersStatus3Table()
                                          .querySingleRow(
                                        queryFn: (q) => q,
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
                                        List<VDashAdminOrdersStatus3Row>
                                            containerScheduleVDashAdminOrdersStatus3RowList =
                                            snapshot.data!;
                                        final containerScheduleVDashAdminOrdersStatus3Row =
                                            containerScheduleVDashAdminOrdersStatus3RowList
                                                    .isNotEmpty
                                                ? containerScheduleVDashAdminOrdersStatus3RowList
                                                    .first
                                                : null;
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              _model.lspvOrderStatusId = 3;
                                            });
                                          },
                                          child: Container(
                                            width: 60.0,
                                            height: 60.0,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  _model.lspvOrderStatusId = 3;
                                                });
                                              },
                                              child: wrapWithModel(
                                                model: _model
                                                    .cpOrdersStatusesModel2,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: CpOrdersStatusesWidget(
                                                  cpStatusId:
                                                      _model.lspvOrderStatusId!,
                                                  cpStatusDescription:
                                                      'Não Programada',
                                                  cpBadge:
                                                      containerScheduleVDashAdminOrdersStatus3Row!
                                                          .counterOrderStatus3!,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation2']!);
                                      },
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
                              if (containerVOrdersCountByTeamLeadersStatusesOpenRow
                                      ?.counterTeamLeadersStatusOpen !=
                                  null)
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        FutureBuilder<List<VOrdersOpenRow>>(
                                          future: VOrdersOpenTable().queryRows(
                                            queryFn: (q) => q
                                                .eq(
                                                  'statusId',
                                                  _model.lspvOrderStatusId,
                                                )
                                                .eq(
                                                  'teamLeaderId',
                                                  FFAppState().stUserCurrent.id,
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
                                            List<VOrdersOpenRow>
                                                listViewScheduledVOrdersOpenRowList =
                                                snapshot.data!;
                                            return ListView.separated(
                                              padding: const EdgeInsets.fromLTRB(
                                                0,
                                                12.0,
                                                0,
                                                0,
                                              ),
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount:
                                                  listViewScheduledVOrdersOpenRowList
                                                      .length,
                                              separatorBuilder: (_, __) =>
                                                  const SizedBox(height: 12.0),
                                              itemBuilder: (context,
                                                  listViewScheduledIndex) {
                                                final listViewScheduledVOrdersOpenRow =
                                                    listViewScheduledVOrdersOpenRowList[
                                                        listViewScheduledIndex];
                                                return CpOrderCardShowWidget(
                                                  key: Key(
                                                      'Keyn3b_${listViewScheduledIndex}_of_${listViewScheduledVOrdersOpenRowList.length}'),
                                                  orderId:
                                                      listViewScheduledVOrdersOpenRow
                                                          .id!,
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (containerVOrdersCountByTeamLeadersStatusesOpenRow
                            ?.counterTeamLeadersStatusOpen ==
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
