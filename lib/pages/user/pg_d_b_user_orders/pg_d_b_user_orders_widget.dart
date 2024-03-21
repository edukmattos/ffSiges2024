import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_o_card_show/cp_o_card_show_widget.dart';
import '/pages/orders/cp_o_v_in_progress_show/cp_o_v_in_progress_show_widget.dart';
import '/pages/user/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_d_b_user_orders_model.dart';
export 'pg_d_b_user_orders_model.dart';

class PgDBUserOrdersWidget extends StatefulWidget {
  const PgDBUserOrdersWidget({super.key});

  @override
  State<PgDBUserOrdersWidget> createState() => _PgDBUserOrdersWidgetState();
}

class _PgDBUserOrdersWidgetState extends State<PgDBUserOrdersWidget>
    with TickerProviderStateMixin {
  late PgDBUserOrdersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  final animationsMap = {
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
    'textOnPageLoadAnimation': AnimationInfo(
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
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgDBUserOrdersModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0));
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
        () async {
          await action_blocks.abUserOrdersOpenUpdate(
            context,
            abLeaderId: FFAppState().asUserCurrent.id,
          );
        },
      );
      await action_blocks.abUserOrdersOpenUpdate(
        context,
        abLeaderId: FFAppState().asUserCurrent.id,
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
      if (isWeb) {
      } else {
        if (FFAppState().asUserCurrent.isTeamLeader) {
          if (!FFAppState().asUserCurrent.isAvailable &&
              !FFAppState().asUserCurrent.isOrderVisitIdInProgress) {
            _model.instantTimerTracker?.cancel();
          } else {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text(FFAppState()
                      .asUserCurrent
                      .orderVisitIdInProgress
                      .toString()),
                  content: Text(
                      FFAppState().asUserCurrent.orderIdInProgress.toString()),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext),
                      child: Text(FFAppState()
                          .asUserCurrent
                          .orderParentIdInProgress
                          .toString()),
                    ),
                  ],
                );
              },
            );
            _model.instantTimerTracker = InstantTimer.periodic(
              duration: const Duration(milliseconds: 60000),
              callback: (timer) async {
                currentUserLocationValue = await getCurrentUserLocation(
                    defaultLocation: const LatLng(0.0, 0.0));
                await showDialog(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: Text(FFAppState()
                          .asUserCurrent
                          .orderVisitIdInProgress
                          .toString()),
                      content: Text(FFAppState()
                          .asUserCurrent
                          .orderIdInProgress
                          .toString()),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: Text(FFAppState()
                              .asUserCurrent
                              .orderParentIdInProgress
                              .toString()),
                        ),
                      ],
                    );
                  },
                );
                if (FFAppState().asUserCurrent.orderVisitIdInProgress > 0) {
                  await OrdersVisitsTrackerTable().insert({
                    'userId': FFAppState().asUserCurrent.id,
                    'latitude':
                        functions.cfGetLatFromLatLng(currentUserLocationValue!),
                    'longitude':
                        functions.cfGetLngFromLatLng(currentUserLocationValue!),
                    'createdDate': supaSerialize<DateTime>(getCurrentTimestamp),
                    'device': '',
                  });
                } else {
                  await OrdersVisitsTrackerTable().insert({
                    'userId': FFAppState().asUserCurrent.id,
                    'orderVisitId':
                        FFAppState().asUserCurrent.orderVisitIdInProgress,
                    'latitude':
                        functions.cfGetLatFromLatLng(currentUserLocationValue!),
                    'longitude':
                        functions.cfGetLngFromLatLng(currentUserLocationValue!),
                    'createdDate': supaSerialize<DateTime>(getCurrentTimestamp),
                    'device': '',
                    'orderId': FFAppState().asUserCurrent.orderIdInProgress,
                    'orderParentId':
                        FFAppState().asUserCurrent.orderParentIdInProgress,
                  });
                }
              },
              startImmediately: true,
            );
          }
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
                'Serviços',
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
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(),
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.cpDBUserAvailableModel,
                              updateCallback: () => setState(() {}),
                              child: CpDBUserAvailableWidget(
                                toolTip: FFAppState().asUserCurrent.nameShort,
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (FFAppState().stUserOOpen.isNotEmpty)
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: 130.0,
                                  decoration: const BoxDecoration(),
                                  child: ListView(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      16.0,
                                      0,
                                    ),
                                    primary: false,
                                    scrollDirection: Axis.horizontal,
                                    children: [
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
                                                    'Ordens de Serviços',
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
                                                      'textOnPageLoadAnimation']!),
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
                                                                  'Autorizadas',
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
                                                                FFAppState()
                                                                    .stUserOOpen
                                                                    .where((e) =>
                                                                        e.statusId ==
                                                                        3)
                                                                    .toList()
                                                                    .length
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
                                                              showBadge: FFAppState()
                                                                      .stUserOOpen
                                                                      .where((e) =>
                                                                          e.statusId ==
                                                                          3)
                                                                      .toList().isNotEmpty,
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
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    _model.lpsvOrderStatusId =
                                                                        3;
                                                                  });
                                                                },
                                                                child: Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            40.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            12.0),
                                                                    child: Text(
                                                                      'AU',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'containerOnPageLoadAnimation2']!),
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
                                                                  'Agendadas',
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
                                                                FFAppState()
                                                                    .stUserOOpen
                                                                    .where((e) =>
                                                                        e.statusId ==
                                                                        4)
                                                                    .toList()
                                                                    .length
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
                                                              showBadge: FFAppState()
                                                                      .stUserOOpen
                                                                      .where((e) =>
                                                                          e.statusId ==
                                                                          4)
                                                                      .toList().isNotEmpty,
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
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    _model.lpsvOrderStatusId =
                                                                        4;
                                                                  });
                                                                },
                                                                child: Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            40.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            12.0),
                                                                    child: Text(
                                                                      'AG',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'containerOnPageLoadAnimation3']!),
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
                                                                  'Suspensas',
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
                                                                FFAppState()
                                                                    .stUserOOpen
                                                                    .where((e) =>
                                                                        e.statusId ==
                                                                        6)
                                                                    .toList()
                                                                    .length
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
                                                              showBadge: FFAppState()
                                                                      .stUserOOpen
                                                                      .where((e) =>
                                                                          e.statusId ==
                                                                          6)
                                                                      .toList().isNotEmpty,
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
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    _model.lpsvOrderStatusId =
                                                                        6;
                                                                  });
                                                                },
                                                                child: Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            40.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            12.0),
                                                                    child: Text(
                                                                      'SU',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'containerOnPageLoadAnimation4']!),
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
                                          'containerOnPageLoadAnimation1']!),
                                    ].divide(const SizedBox(width: 12.0)),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (FFAppState()
                                            .asUserCurrent
                                            .orderVisitIdInProgress >
                                        0)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 30.0),
                                        child: wrapWithModel(
                                          model: _model.cpOVInProgressShowModel,
                                          updateCallback: () => setState(() {}),
                                          child: CpOVInProgressShowWidget(
                                            ppOId: FFAppState()
                                                .asUserCurrent
                                                .orderIdInProgress,
                                            ppOVId: FFAppState()
                                                .asUserCurrent
                                                .orderVisitIdInProgress,
                                          ),
                                        ),
                                      ),
                                    Builder(
                                      builder: (context) {
                                        final gcOrdersOpenByStatus =
                                            FFAppState()
                                                .stUserOOpen
                                                .where((e) =>
                                                    e.statusId ==
                                                    _model.lpsvOrderStatusId)
                                                .toList();
                                        return ListView.separated(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              gcOrdersOpenByStatus.length,
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(height: 12.0),
                                          itemBuilder: (context,
                                              gcOrdersOpenByStatusIndex) {
                                            final gcOrdersOpenByStatusItem =
                                                gcOrdersOpenByStatus[
                                                    gcOrdersOpenByStatusIndex];
                                            return Container(
                                              decoration: const BoxDecoration(),
                                              child: CpOCardShowWidget(
                                                key: Key(
                                                    'Keyzgq_${gcOrdersOpenByStatusIndex}_of_${gcOrdersOpenByStatus.length}'),
                                                ppOId:
                                                    gcOrdersOpenByStatusItem.id,
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          ),
                        ),
                      if (FFAppState().stUserOOpen.isEmpty)
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
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
                              ],
                            ),
                          ),
                        ),
                    ].divide(const SizedBox(height: 12.0)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
