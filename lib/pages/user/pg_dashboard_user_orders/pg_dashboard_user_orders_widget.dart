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
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
    'textOnPageLoadAnimation1': AnimationInfo(
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
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(100.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 180.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 180.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 180.ms,
          duration: 600.ms,
          begin: const Offset(20.0, 0.0),
          end: const Offset(0.0, 0.0),
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
    'containerOnPageLoadAnimation4': AnimationInfo(
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
    'containerOnPageLoadAnimation5': AnimationInfo(
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
    'containerOnPageLoadAnimation6': AnimationInfo(
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
          begin: const Offset(100.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 180.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 180.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 180.ms,
          duration: 600.ms,
          begin: const Offset(20.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation7': AnimationInfo(
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
    'containerOnPageLoadAnimation8': AnimationInfo(
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
    'containerOnPageLoadAnimation9': AnimationInfo(
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
      await action_blocks.abUserUpdate(
        context,
        abEmail: FFAppState().asUserCurrent.email,
        abAccessToken: FFAppState().asUserCurrent.accessToken,
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
      if (FFAppState().asUserCurrent.statusId != 2) {
        if (FFAppState().asUserCurrent.statusId == 1) {
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
          accessToken: FFAppState().asUserCurrent.accessToken,
        );

        context.pushNamedAuth('pgSignin', context.mounted);

        return;
      }
      if (FFAppState().asUserCurrent.orderVisitIdInProgress > 0) {
        await action_blocks.abOrderVisitSelected(
          context,
          abOrderVisitId: FFAppState().asUserCurrent.orderVisitIdInProgress,
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('FloatingActionButton pressed ...');
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                setState(() {
                  _model.lpsvOrdersView = 'ordersAnalysis';
                });

                context.pushNamed('pgOrderParentNew');
              },
              child: Icon(
                Icons.add,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
            ),
          ),
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
            child:
                FutureBuilder<List<VOrdersCountByTeamLeadersStatusesOpenRow>>(
              future:
                  VOrdersCountByTeamLeadersStatusesOpenTable().querySingleRow(
                queryFn: (q) => q.eq(
                  'teamLeaderId',
                  FFAppState().asUserCurrent.id,
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
                    columnVOrdersCountByTeamLeadersStatusesOpenRowList =
                    snapshot.data!;
                final columnVOrdersCountByTeamLeadersStatusesOpenRow =
                    columnVOrdersCountByTeamLeadersStatusesOpenRowList
                            .isNotEmpty
                        ? columnVOrdersCountByTeamLeadersStatusesOpenRowList
                            .first
                        : null;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 170.0,
                      child: Stack(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 0.0, 0.0),
                                  child: Text(
                                    FFAppState()
                                        .asUserCurrent
                                        .departmentDescription,
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xB3FFFFFF),
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation1']!),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 160.0,
                                decoration: const BoxDecoration(),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: ListView(
                                    padding: const EdgeInsets.fromLTRB(
                                      16.0,
                                      0,
                                      16.0,
                                      0,
                                    ),
                                    primary: false,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      if (columnVOrdersCountByTeamLeadersStatusesOpenRow
                                              ?.counterTeamLeadersStatusOpen !=
                                          null)
                                        Container(
                                          height: 80.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x1F000000),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Ordens de Serviços',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textOnPageLoadAnimation2']!),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      FutureBuilder<
                                                          List<
                                                              VOrdersCountByTeamLeadersStatus3Row>>(
                                                        future:
                                                            VOrdersCountByTeamLeadersStatus3Table()
                                                                .querySingleRow(
                                                          queryFn: (q) => q.eq(
                                                            'teamLeaderId',
                                                            FFAppState()
                                                                .asUserCurrent
                                                                .id,
                                                          ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
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
                                                          List<VOrdersCountByTeamLeadersStatus3Row>
                                                              columnVOrdersCountByTeamLeadersStatus3RowList =
                                                              snapshot.data!;
                                                          final columnVOrdersCountByTeamLeadersStatus3Row =
                                                              columnVOrdersCountByTeamLeadersStatus3RowList
                                                                      .isNotEmpty
                                                                  ? columnVOrdersCountByTeamLeadersStatus3RowList
                                                                      .first
                                                                  : null;
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              if (columnVOrdersCountByTeamLeadersStatus3Row
                                                                      ?.counterTeamLeadersStatus3 !=
                                                                  null)
                                                                FutureBuilder<
                                                                    List<
                                                                        VDashUserOrdersStatus3Row>>(
                                                                  future: VDashUserOrdersStatus3Table()
                                                                      .querySingleRow(
                                                                    queryFn:
                                                                        (q) => q
                                                                            .eq(
                                                                      'teamLeaderId',
                                                                      FFAppState()
                                                                          .asUserCurrent
                                                                          .id,
                                                                    ),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<VDashUserOrdersStatus3Row>
                                                                        containerOrdersStatus3VDashUserOrdersStatus3RowList =
                                                                        snapshot
                                                                            .data!;
                                                                    final containerOrdersStatus3VDashUserOrdersStatus3Row = containerOrdersStatus3VDashUserOrdersStatus3RowList
                                                                            .isNotEmpty
                                                                        ? containerOrdersStatus3VDashUserOrdersStatus3RowList
                                                                            .first
                                                                        : null;
                                                                    return Container(
                                                                      width:
                                                                          60.0,
                                                                      height:
                                                                          60.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AlignedTooltip(
                                                                        content: Padding(
                                                                            padding: const EdgeInsets.all(4.0),
                                                                            child: Text(
                                                                              'Autorizadas',
                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
                                                                            )),
                                                                        offset:
                                                                            4.0,
                                                                        preferredDirection:
                                                                            AxisDirection.down,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).primaryBtnText,
                                                                        elevation:
                                                                            4.0,
                                                                        tailBaseWidth:
                                                                            24.0,
                                                                        tailLength:
                                                                            12.0,
                                                                        waitDuration:
                                                                            const Duration(milliseconds: 100),
                                                                        showDuration:
                                                                            const Duration(milliseconds: 1500),
                                                                        triggerMode:
                                                                            TooltipTriggerMode.tap,
                                                                        child: badges
                                                                            .Badge(
                                                                          badgeContent:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              containerOrdersStatus3VDashUserOrdersStatus3Row?.counterOrderStatus3?.toString(),
                                                                              '0',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                          showBadge:
                                                                              containerOrdersStatus3VDashUserOrdersStatus3Row!.counterOrderStatus3! > 0,
                                                                          shape: badges
                                                                              .BadgeShape
                                                                              .circle,
                                                                          badgeColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          elevation:
                                                                              4.0,
                                                                          padding:
                                                                              const EdgeInsets.all(8.0),
                                                                          position:
                                                                              badges.BadgePosition.topEnd(),
                                                                          animationType: badges
                                                                              .BadgeAnimationType
                                                                              .scale,
                                                                          toAnimate:
                                                                              true,
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              setState(() {
                                                                                _model.lpsvOrderStatusId = 3;
                                                                                _model.lpsvIsParent = false;
                                                                              });
                                                                            },
                                                                            child:
                                                                                Card(
                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(40.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(12.0),
                                                                                child: Text(
                                                                                  'AU',
                                                                                  style: FlutterFlowTheme.of(context).titleSmall,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation2']!);
                                                                  },
                                                                ),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                      FutureBuilder<
                                                          List<
                                                              VOrdersCountByTeamLeadersStatus4Row>>(
                                                        future:
                                                            VOrdersCountByTeamLeadersStatus4Table()
                                                                .querySingleRow(
                                                          queryFn: (q) => q.eq(
                                                            'teamLeaderId',
                                                            FFAppState()
                                                                .asUserCurrent
                                                                .id,
                                                          ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
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
                                                          List<VOrdersCountByTeamLeadersStatus4Row>
                                                              columnVOrdersCountByTeamLeadersStatus4RowList =
                                                              snapshot.data!;
                                                          final columnVOrdersCountByTeamLeadersStatus4Row =
                                                              columnVOrdersCountByTeamLeadersStatus4RowList
                                                                      .isNotEmpty
                                                                  ? columnVOrdersCountByTeamLeadersStatus4RowList
                                                                      .first
                                                                  : null;
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              if (columnVOrdersCountByTeamLeadersStatus4Row
                                                                      ?.counterTeamLeadersStatus4 !=
                                                                  null)
                                                                FutureBuilder<
                                                                    List<
                                                                        VDashUserOrdersStatus4Row>>(
                                                                  future: VDashUserOrdersStatus4Table()
                                                                      .querySingleRow(
                                                                    queryFn:
                                                                        (q) => q
                                                                            .eq(
                                                                      'teamLeaderId',
                                                                      FFAppState()
                                                                          .asUserCurrent
                                                                          .id,
                                                                    ),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<VDashUserOrdersStatus4Row>
                                                                        containerOrdersStatus4VDashUserOrdersStatus4RowList =
                                                                        snapshot
                                                                            .data!;
                                                                    final containerOrdersStatus4VDashUserOrdersStatus4Row = containerOrdersStatus4VDashUserOrdersStatus4RowList
                                                                            .isNotEmpty
                                                                        ? containerOrdersStatus4VDashUserOrdersStatus4RowList
                                                                            .first
                                                                        : null;
                                                                    return Container(
                                                                      width:
                                                                          60.0,
                                                                      height:
                                                                          60.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AlignedTooltip(
                                                                        content: Padding(
                                                                            padding: const EdgeInsets.all(4.0),
                                                                            child: Text(
                                                                              'Agendadas',
                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
                                                                            )),
                                                                        offset:
                                                                            4.0,
                                                                        preferredDirection:
                                                                            AxisDirection.down,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).primaryBtnText,
                                                                        elevation:
                                                                            4.0,
                                                                        tailBaseWidth:
                                                                            24.0,
                                                                        tailLength:
                                                                            12.0,
                                                                        waitDuration:
                                                                            const Duration(milliseconds: 100),
                                                                        showDuration:
                                                                            const Duration(milliseconds: 1500),
                                                                        triggerMode:
                                                                            TooltipTriggerMode.tap,
                                                                        child: badges
                                                                            .Badge(
                                                                          badgeContent:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              containerOrdersStatus4VDashUserOrdersStatus4Row?.counterOrderStatus4?.toString(),
                                                                              '0',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                          showBadge:
                                                                              containerOrdersStatus4VDashUserOrdersStatus4Row!.counterOrderStatus4! > 0,
                                                                          shape: badges
                                                                              .BadgeShape
                                                                              .circle,
                                                                          badgeColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          elevation:
                                                                              4.0,
                                                                          padding:
                                                                              const EdgeInsets.all(8.0),
                                                                          position:
                                                                              badges.BadgePosition.topEnd(),
                                                                          animationType: badges
                                                                              .BadgeAnimationType
                                                                              .scale,
                                                                          toAnimate:
                                                                              true,
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              setState(() {
                                                                                _model.lpsvOrderStatusId = 4;
                                                                                _model.lpsvIsParent = false;
                                                                              });
                                                                            },
                                                                            child:
                                                                                Card(
                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(40.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(12.0),
                                                                                child: Text(
                                                                                  'AG',
                                                                                  style: FlutterFlowTheme.of(context).titleSmall,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation3']!);
                                                                  },
                                                                ),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                      FutureBuilder<
                                                          List<
                                                              VOrdersCountByTeamLeadersStatus5Row>>(
                                                        future:
                                                            VOrdersCountByTeamLeadersStatus5Table()
                                                                .querySingleRow(
                                                          queryFn: (q) => q.eq(
                                                            'teamLeaderId',
                                                            FFAppState()
                                                                .asUserCurrent
                                                                .id,
                                                          ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
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
                                                          List<VOrdersCountByTeamLeadersStatus5Row>
                                                              columnVOrdersCountByTeamLeadersStatus5RowList =
                                                              snapshot.data!;
                                                          final columnVOrdersCountByTeamLeadersStatus5Row =
                                                              columnVOrdersCountByTeamLeadersStatus5RowList
                                                                      .isNotEmpty
                                                                  ? columnVOrdersCountByTeamLeadersStatus5RowList
                                                                      .first
                                                                  : null;
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              if (columnVOrdersCountByTeamLeadersStatus5Row
                                                                      ?.counterTeamLeadersStatus5 !=
                                                                  null)
                                                                FutureBuilder<
                                                                    List<
                                                                        VDashUserOrdersStatus5Row>>(
                                                                  future: VDashUserOrdersStatus5Table()
                                                                      .querySingleRow(
                                                                    queryFn:
                                                                        (q) => q
                                                                            .eq(
                                                                      'teamLeaderId',
                                                                      FFAppState()
                                                                          .asUserCurrent
                                                                          .id,
                                                                    ),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<VDashUserOrdersStatus5Row>
                                                                        containerOrdersStatus5VDashUserOrdersStatus5RowList =
                                                                        snapshot
                                                                            .data!;
                                                                    final containerOrdersStatus5VDashUserOrdersStatus5Row = containerOrdersStatus5VDashUserOrdersStatus5RowList
                                                                            .isNotEmpty
                                                                        ? containerOrdersStatus5VDashUserOrdersStatus5RowList
                                                                            .first
                                                                        : null;
                                                                    return Container(
                                                                      width:
                                                                          60.0,
                                                                      height:
                                                                          60.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AlignedTooltip(
                                                                        content: Padding(
                                                                            padding: const EdgeInsets.all(4.0),
                                                                            child: Text(
                                                                              'Execução',
                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
                                                                            )),
                                                                        offset:
                                                                            4.0,
                                                                        preferredDirection:
                                                                            AxisDirection.down,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).primaryBtnText,
                                                                        elevation:
                                                                            4.0,
                                                                        tailBaseWidth:
                                                                            24.0,
                                                                        tailLength:
                                                                            12.0,
                                                                        waitDuration:
                                                                            const Duration(milliseconds: 100),
                                                                        showDuration:
                                                                            const Duration(milliseconds: 1500),
                                                                        triggerMode:
                                                                            TooltipTriggerMode.tap,
                                                                        child: badges
                                                                            .Badge(
                                                                          badgeContent:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              containerOrdersStatus5VDashUserOrdersStatus5Row?.counterOrderStatus5?.toString(),
                                                                              '0',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                          showBadge:
                                                                              containerOrdersStatus5VDashUserOrdersStatus5Row!.counterOrderStatus5! > 0,
                                                                          shape: badges
                                                                              .BadgeShape
                                                                              .circle,
                                                                          badgeColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          elevation:
                                                                              4.0,
                                                                          padding:
                                                                              const EdgeInsets.all(8.0),
                                                                          position:
                                                                              badges.BadgePosition.topEnd(),
                                                                          animationType: badges
                                                                              .BadgeAnimationType
                                                                              .scale,
                                                                          toAnimate:
                                                                              true,
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              setState(() {
                                                                                _model.lpsvOrderStatusId = 5;
                                                                                _model.lpsvIsParent = false;
                                                                              });
                                                                            },
                                                                            child:
                                                                                Card(
                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                              color: FlutterFlowTheme.of(context).success,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(40.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(12.0),
                                                                                child: Text(
                                                                                  'EX',
                                                                                  style: FlutterFlowTheme.of(context).titleSmall,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation4']!);
                                                                  },
                                                                ),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                      FutureBuilder<
                                                          List<
                                                              VOrdersCountByTeamLeadersStatus6Row>>(
                                                        future:
                                                            VOrdersCountByTeamLeadersStatus6Table()
                                                                .querySingleRow(
                                                          queryFn: (q) => q.eq(
                                                            'teamLeaderId',
                                                            FFAppState()
                                                                .asUserCurrent
                                                                .id,
                                                          ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
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
                                                          List<VOrdersCountByTeamLeadersStatus6Row>
                                                              columnVOrdersCountByTeamLeadersStatus6RowList =
                                                              snapshot.data!;
                                                          final columnVOrdersCountByTeamLeadersStatus6Row =
                                                              columnVOrdersCountByTeamLeadersStatus6RowList
                                                                      .isNotEmpty
                                                                  ? columnVOrdersCountByTeamLeadersStatus6RowList
                                                                      .first
                                                                  : null;
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              if (columnVOrdersCountByTeamLeadersStatus6Row
                                                                      ?.counterTeamLeadersStatus6 !=
                                                                  null)
                                                                FutureBuilder<
                                                                    List<
                                                                        VDashUserOrdersStatus6Row>>(
                                                                  future: VDashUserOrdersStatus6Table()
                                                                      .querySingleRow(
                                                                    queryFn:
                                                                        (q) => q
                                                                            .eq(
                                                                      'teamLeaderId',
                                                                      FFAppState()
                                                                          .asUserCurrent
                                                                          .id,
                                                                    ),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<VDashUserOrdersStatus6Row>
                                                                        containerOrdersStatus6VDashUserOrdersStatus6RowList =
                                                                        snapshot
                                                                            .data!;
                                                                    final containerOrdersStatus6VDashUserOrdersStatus6Row = containerOrdersStatus6VDashUserOrdersStatus6RowList
                                                                            .isNotEmpty
                                                                        ? containerOrdersStatus6VDashUserOrdersStatus6RowList
                                                                            .first
                                                                        : null;
                                                                    return Container(
                                                                      width:
                                                                          60.0,
                                                                      height:
                                                                          60.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AlignedTooltip(
                                                                        content: Padding(
                                                                            padding: const EdgeInsets.all(4.0),
                                                                            child: Text(
                                                                              'Suspensas',
                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
                                                                            )),
                                                                        offset:
                                                                            4.0,
                                                                        preferredDirection:
                                                                            AxisDirection.down,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).primaryBtnText,
                                                                        elevation:
                                                                            4.0,
                                                                        tailBaseWidth:
                                                                            24.0,
                                                                        tailLength:
                                                                            12.0,
                                                                        waitDuration:
                                                                            const Duration(milliseconds: 100),
                                                                        showDuration:
                                                                            const Duration(milliseconds: 1500),
                                                                        triggerMode:
                                                                            TooltipTriggerMode.tap,
                                                                        child: badges
                                                                            .Badge(
                                                                          badgeContent:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              containerOrdersStatus6VDashUserOrdersStatus6Row?.counterOrderStatus6?.toString(),
                                                                              '0',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                          showBadge:
                                                                              containerOrdersStatus6VDashUserOrdersStatus6Row!.counterOrderStatus6! > 0,
                                                                          shape: badges
                                                                              .BadgeShape
                                                                              .circle,
                                                                          badgeColor:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          elevation:
                                                                              4.0,
                                                                          padding:
                                                                              const EdgeInsets.all(8.0),
                                                                          position:
                                                                              badges.BadgePosition.topEnd(),
                                                                          animationType: badges
                                                                              .BadgeAnimationType
                                                                              .scale,
                                                                          toAnimate:
                                                                              true,
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              setState(() {
                                                                                _model.lpsvOrderStatusId = 6;
                                                                                _model.lpsvIsParent = false;
                                                                              });
                                                                            },
                                                                            child:
                                                                                Card(
                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                              color: FlutterFlowTheme.of(context).accent3,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(40.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(12.0),
                                                                                child: Text(
                                                                                  'SU',
                                                                                  style: FlutterFlowTheme.of(context).titleSmall,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation5']!);
                                                                  },
                                                                ),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 12.0)),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 8.0)),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation1']!),
                                      Container(
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x1F000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Visitas',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation3']!),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          width: 60.0,
                                                          height: 60.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: AlignedTooltip(
                                                            content: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Text(
                                                                  'Rascunho',
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
                                                                    .primaryBtnText,
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
                                                            child: badges.Badge(
                                                              badgeContent:
                                                                  Text(
                                                                random_data
                                                                    .randomInteger(
                                                                        1, 222)
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                    ),
                                                              ),
                                                              showBadge: true,
                                                              shape: badges
                                                                  .BadgeShape
                                                                  .circle,
                                                              badgeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              elevation: 4.0,
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              position: badges
                                                                      .BadgePosition
                                                                  .topEnd(),
                                                              animationType: badges
                                                                  .BadgeAnimationType
                                                                  .scale,
                                                              toAnimate: true,
                                                              child: Card(
                                                                clipBehavior: Clip
                                                                    .antiAliasWithSaveLayer,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40.0),
                                                                ),
                                                                child: const Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              12.0),
                                                                  child: Icon(
                                                                    Icons.draw,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'containerOnPageLoadAnimation7']!),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          width: 60.0,
                                                          height: 60.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: AlignedTooltip(
                                                            content: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Text(
                                                                  'Reportadas',
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
                                                                    .primaryBtnText,
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
                                                            child: badges.Badge(
                                                              badgeContent:
                                                                  Text(
                                                                random_data
                                                                    .randomInteger(
                                                                        1, 222)
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                    ),
                                                              ),
                                                              showBadge: true,
                                                              shape: badges
                                                                  .BadgeShape
                                                                  .circle,
                                                              badgeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              elevation: 4.0,
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              position: badges
                                                                      .BadgePosition
                                                                  .topEnd(),
                                                              animationType: badges
                                                                  .BadgeAnimationType
                                                                  .scale,
                                                              toAnimate: true,
                                                              child: Card(
                                                                clipBehavior: Clip
                                                                    .antiAliasWithSaveLayer,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40.0),
                                                                ),
                                                                child: const Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              12.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .report_problem,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'containerOnPageLoadAnimation8']!),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          width: 60.0,
                                                          height: 60.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: AlignedTooltip(
                                                            content: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Text(
                                                                  'Reprovadas',
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
                                                                    .primaryBtnText,
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
                                                            child: badges.Badge(
                                                              badgeContent:
                                                                  Text(
                                                                random_data
                                                                    .randomInteger(
                                                                        1, 222)
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                    ),
                                                              ),
                                                              showBadge: true,
                                                              shape: badges
                                                                  .BadgeShape
                                                                  .circle,
                                                              badgeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              elevation: 4.0,
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              position: badges
                                                                      .BadgePosition
                                                                  .topEnd(),
                                                              animationType: badges
                                                                  .BadgeAnimationType
                                                                  .scale,
                                                              toAnimate: true,
                                                              child: Card(
                                                                clipBehavior: Clip
                                                                    .antiAliasWithSaveLayer,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40.0),
                                                                ),
                                                                child: const Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              12.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .thumb_down,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'containerOnPageLoadAnimation9']!),
                                                      ],
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 12.0)),
                                                ),
                                              ),
                                            ].divide(const SizedBox(height: 8.0)),
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation6']!),
                                    ].divide(const SizedBox(width: 12.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 16.0),
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if ((FFAppState()
                                          .asUserCurrent
                                          .orderVisitIdInProgress >
                                      0) &&
                                  (FFAppState().asUserCurrent.id ==
                                      FFAppState()
                                          .asUserCurrent
                                          .orderVisitInProgressTeamLeaderId))
                                FutureBuilder<List<VOrdersVisitsRow>>(
                                  future: VOrdersVisitsTable().querySingleRow(
                                    queryFn: (q) => q.eq(
                                      'id',
                                      FFAppState()
                                          .asUserCurrent
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
                                                      .asUserCurrent
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
                                                  .asUserCurrent
                                                  .orderIdInProgress,
                                              visitId: FFAppState()
                                                  .asUserCurrent
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
                              if (columnVOrdersCountByTeamLeadersStatusesOpenRow
                                      ?.counterTeamLeadersStatusOpen !=
                                  null)
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        FutureBuilder<
                                            List<VOrdersOpenStatus3Row>>(
                                          future: VOrdersOpenStatus3Table()
                                              .queryRows(
                                            queryFn: (q) => q
                                                .eq(
                                                  'statusId',
                                                  _model.lpsvOrderStatusId,
                                                )
                                                .eq(
                                                  'teamLeaderId',
                                                  FFAppState().asUserCurrent.id,
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
                                            List<VOrdersOpenStatus3Row>
                                                listViewScheduledVOrdersOpenStatus3RowList =
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
                                                  listViewScheduledVOrdersOpenStatus3RowList
                                                      .length,
                                              separatorBuilder: (_, __) =>
                                                  const SizedBox(height: 12.0),
                                              itemBuilder: (context,
                                                  listViewScheduledIndex) {
                                                final listViewScheduledVOrdersOpenStatus3Row =
                                                    listViewScheduledVOrdersOpenStatus3RowList[
                                                        listViewScheduledIndex];
                                                return CpOrderCardShowWidget(
                                                  key: Key(
                                                      'Key6hr_${listViewScheduledIndex}_of_${listViewScheduledVOrdersOpenStatus3RowList.length}'),
                                                  orderId:
                                                      listViewScheduledVOrdersOpenStatus3Row
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
                    if (columnVOrdersCountByTeamLeadersStatusesOpenRow
                            ?.counterTeamLeadersStatusOpen ==
                        null)
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
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
