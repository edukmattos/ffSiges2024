import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/cp_results_no_found_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/md_d_b_admin_filters/md_d_b_admin_filters_widget.dart';
import '/pages/admin/md_d_b_admin_team_users/md_d_b_admin_team_users_widget.dart';
import '/pages/components/cp_input_text/cp_input_text_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/components/cp_user_pic_profile/cp_user_pic_profile_widget.dart';
import '/pages/orders/cp_o_card_show/cp_o_card_show_widget.dart';
import '/pages/orders/cp_o_p_d_b_admin_card_show/cp_o_p_d_b_admin_card_show_widget.dart';
import '/pages/user/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/pages/visits/cp_o_v_list_item/cp_o_v_list_item_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_d_b_admin_model.dart';
export 'pg_d_b_admin_model.dart';

class PgDBAdminWidget extends StatefulWidget {
  const PgDBAdminWidget({super.key});

  @override
  State<PgDBAdminWidget> createState() => _PgDBAdminWidgetState();
}

class _PgDBAdminWidgetState extends State<PgDBAdminWidget>
    with TickerProviderStateMixin {
  late PgDBAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

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
    'textOnPageLoadAnimation1': AnimationInfo(
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
    'containerOnPageLoadAnimation10': AnimationInfo(
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
    'containerOnPageLoadAnimation11': AnimationInfo(
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
    'containerOnPageLoadAnimation12': AnimationInfo(
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
    'containerOnPageLoadAnimation13': AnimationInfo(
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
    'containerOnPageLoadAnimation14': AnimationInfo(
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
    'containerOnPageLoadAnimation15': AnimationInfo(
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
    'containerOnPageLoadAnimation16': AnimationInfo(
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
    'textOnPageLoadAnimation4': AnimationInfo(
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
    'containerOnPageLoadAnimation17': AnimationInfo(
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
          begin: const Offset(0.0, 70.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgDBAdminModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.caSupabaseDisconnect(
        'orders',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'orders',
        () async {
          await action_blocks.abDBAdminOrdersFilters(
            context,
            abOrdersTypes: FFAppState().asFiltersServices.ordersTypes,
            abSystemsParent: FFAppState().asFiltersServices.systemsParents,
            abSystems: FFAppState().asFiltersServices.systems,
            abUnits: FFAppState().asFiltersServices.units,
            abOrdersTypesSubs: FFAppState().asFiltersServices.ordersTypesSubs,
            abUnitsTypesParent: FFAppState().asFiltersServices.unitsTypesParent,
            abContracts: FFAppState().asFiltersServices.contracts,
          );
        },
      );
      await actions.caSupabaseDisconnect(
        'ordersVisits',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'ordersVisits',
        () async {
          await action_blocks.abOVSearchFilters(
            context,
            abSystemsParent: FFAppState().asFiltersServices.systemsParents,
            abSystems: FFAppState().asFiltersServices.systems,
            abUnitsTypesParent: FFAppState().asFiltersServices.unitsTypesParent,
            abUnits: FFAppState().asFiltersServices.units,
            abOrdersTypes: FFAppState().asFiltersServices.ordersTypes,
            abOrdersTypesSubs: FFAppState().asFiltersServices.ordersTypesSubs,
            abOrdersVisitsProcessing: [],
            abContracts: FFAppState().asFiltersServices.contracts,
          );
        },
      );
      await actions.caSupabaseDisconnect(
        'users',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'users',
        () async {
          await action_blocks.abDBAdminUsersAvailable(
            context,
            abContracts: FFAppState().asFiltersServices.contracts,
          );
        },
      );
      await action_blocks.abDBAdminOrdersFilters(context);
      await action_blocks.abOVSearchFilters(
        context,
        abSystemsParent: FFAppState().asFiltersServices.systemsParents,
        abSystems: FFAppState().asFiltersServices.systems,
        abUnitsTypesParent: FFAppState().asFiltersServices.unitsTypesParent,
        abUnits: FFAppState().asFiltersServices.units,
        abOrdersTypes: FFAppState().asFiltersServices.ordersTypes,
        abOrdersTypesSubs: FFAppState().asFiltersServices.ordersTypesSubs,
        abOrdersVisitsProcessing:
            FFAppState().asFiltersServices.ordersVisitsProcessing,
        abContracts: FFAppState().asFiltersServices.contracts,
      );
      await action_blocks.abDBAdminUsersAvailable(context);
      setState(() => _model.requestCompleter = null);
      await _model.waitForRequestCompleted();
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
                  'Painel Geral',
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
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Align(
                          alignment: const AlignmentDirectional(1.0, -1.0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).primary,
                            borderRadius: 25.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            fillColor: FlutterFlowTheme.of(context).primary,
                            icon: FaIcon(
                              FontAwesomeIcons.slidersH,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24.0,
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
                                  return GestureDetector(
                                    onTap: () => _model
                                            .unfocusNode.canRequestFocus
                                        ? FocusScope.of(context)
                                            .requestFocus(_model.unfocusNode)
                                        : FocusScope.of(context).unfocus(),
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: const MdDBAdminFiltersWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Container(
                        height: 60.0,
                        constraints: const BoxConstraints(
                          minWidth: 300.0,
                          maxWidth: 400.0,
                        ),
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: wrapWithModel(
                                model: _model.cpInputTextModel,
                                updateCallback: () => setState(() {}),
                                child: const CpInputTextWidget(
                                  labelText: 'Localizar SS',
                                  isReadOnly: false,
                                ),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 25.0,
                              buttonSize: 50.0,
                              fillColor: FlutterFlowTheme.of(context).primary,
                              icon: FaIcon(
                                FontAwesomeIcons.search,
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                size: 24.0,
                              ),
                              showLoadingIndicator: true,
                              onPressed: () async {
                                _model.resOPSearch =
                                    await VOrdersTable().queryRows(
                                  queryFn: (q) => q
                                      .eq(
                                        'orderMask',
                                        _model.cpInputTextModel
                                            .inputTextController.text,
                                      )
                                      .is_(
                                        'parentId',
                                        null,
                                      ),
                                );
                                if (_model.resOPSearch?.length == 1) {
                                  _model.apiResult2s8 = await ApiOrdersGroup
                                      .ordersByParentIdCall
                                      .call(
                                    parentId: _model.resOPSearch?.first.id,
                                  );
                                  if ((_model.apiResult2s8?.succeeded ??
                                      true)) {
                                    context.pushNamed(
                                      'pgOPSearch',
                                      queryParameters: {
                                        'orderParentId': serializeParam(
                                          _model.resOPSearch?.first.id,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Ops ...'),
                                        content:
                                            const Text('Não foi nenhum registro.'),
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
                                }

                                setState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context).primary,
                              borderRadius: 25.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              fillColor: FlutterFlowTheme.of(context).primary,
                              icon: Icon(
                                Icons.add,
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                _model.isAllowedOPnew =
                                    await action_blocks.abGuardian(
                                  context,
                                  abPgRequestedId: 6,
                                );
                                if (_model.isAllowedOPnew!) {
                                  context.pushNamed('pgOPNew');
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        FFAppConstants.msgNotAllowed,
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).error,
                                    ),
                                  );
                                }

                                setState(() {});
                              },
                            ),
                          ].divide(const SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                    Container(
                      height: 130.0,
                      decoration: const BoxDecoration(),
                      child: ListView(
                        padding: EdgeInsets.zero,
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
                              borderRadius: BorderRadius.circular(12.0),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Solicitações de Serviços',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation1']!),
                                    ],
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
                                                      'Não Programadas',
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
                                                    FFAppState()
                                                        .asDashAdminOrdersParentFilters
                                                        .where((e) =>
                                                            e.statusId == 1)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  showBadge: FFAppState()
                                                          .asDashAdminOrdersParentFilters
                                                          .where((e) =>
                                                              e.statusId == 1)
                                                          .toList().isNotEmpty,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
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
                                                        _model.lpsvOrderStatusId =
                                                            1;
                                                        _model.lpsvIsParent =
                                                            true;
                                                        _model.lpsvOrdersOrVisits =
                                                            'orders';
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
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child: Text(
                                                          'NP',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation2']!),
                                          ],
                                        ),
                                        Column(
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
                                                      'Avaliação',
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
                                                    FFAppState()
                                                        .asDashAdminOrdersParentFilters
                                                        .where((e) =>
                                                            e.statusId == 2)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  showBadge: FFAppState()
                                                          .asDashAdminOrdersParentFilters
                                                          .where((e) =>
                                                              e.statusId == 2)
                                                          .toList().isNotEmpty,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
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
                                                        _model.lpsvOrderStatusId =
                                                            2;
                                                        _model.lpsvIsParent =
                                                            true;
                                                        _model.lpsvOrdersOrVisits =
                                                            'orders';
                                                      });
                                                    },
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child: Text(
                                                          'AV',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation3']!),
                                          ],
                                        ),
                                        Column(
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
                                                      'Execução',
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
                                                    FFAppState()
                                                        .asDashAdminOrdersParentFilters
                                                        .where((e) =>
                                                            e.statusId == 5)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  showBadge: FFAppState()
                                                          .asDashAdminOrdersParentFilters
                                                          .where((e) =>
                                                              e.statusId == 5)
                                                          .toList().isNotEmpty,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
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
                                                        _model.lpsvOrderStatusId =
                                                            5;
                                                        _model.lpsvIsParent =
                                                            true;
                                                        _model.lpsvOrdersOrVisits =
                                                            'orders';
                                                      });
                                                    },
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child: Text(
                                                          'EX',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation4']!),
                                          ],
                                        ),
                                        Column(
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
                                                    FFAppState()
                                                        .asDashAdminOrdersParentFilters
                                                        .where((e) =>
                                                            e.statusId == 6)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  showBadge: FFAppState()
                                                          .asDashAdminOrdersParentFilters
                                                          .where((e) =>
                                                              e.statusId == 6)
                                                          .toList().isNotEmpty,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
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
                                                        _model.lpsvOrderStatusId =
                                                            6;
                                                        _model.lpsvIsParent =
                                                            true;
                                                        _model.lpsvOrdersOrVisits =
                                                            'orders';
                                                      });
                                                    },
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child: Text(
                                                          'SU',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation5']!),
                                          ],
                                        ),
                                      ].divide(const SizedBox(width: 12.0)),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation1']!),
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
                              borderRadius: BorderRadius.circular(12.0),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Ordens de Serviços',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation2']!),
                                    ],
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
                                                      'Avaliação',
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
                                                    FFAppState()
                                                        .asDashAdminOrdersFilters
                                                        .where((e) =>
                                                            e.statusId == 2)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  showBadge: FFAppState()
                                                          .asDashAdminOrdersFilters
                                                          .where((e) =>
                                                              e.statusId == 2)
                                                          .toList().isNotEmpty,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
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
                                                        _model.lpsvOrderStatusId =
                                                            2;
                                                        _model.lpsvIsParent =
                                                            false;
                                                        _model.lpsvOrdersOrVisits =
                                                            'orders';
                                                      });
                                                    },
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child: Text(
                                                          'AV',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation7']!),
                                          ],
                                        ),
                                        Column(
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
                                                      'Autorizadas',
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
                                                    FFAppState()
                                                        .asDashAdminOrdersFilters
                                                        .where((e) =>
                                                            e.statusId == 3)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  showBadge: FFAppState()
                                                          .asDashAdminOrdersFilters
                                                          .where((e) =>
                                                              e.statusId == 3)
                                                          .toList().isNotEmpty,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
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
                                                        _model.lpsvOrderStatusId =
                                                            3;
                                                        _model.lpsvIsParent =
                                                            false;
                                                        _model.lpsvOrdersOrVisits =
                                                            'orders';
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
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child: Text(
                                                          'AU',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation8']!),
                                          ],
                                        ),
                                        Column(
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
                                                    FFAppState()
                                                        .asDashAdminOrdersFilters
                                                        .where((e) =>
                                                            e.statusId == 4)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  showBadge: FFAppState()
                                                          .asDashAdminOrdersFilters
                                                          .where((e) =>
                                                              e.statusId == 4)
                                                          .toList().isNotEmpty,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
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
                                                        _model.lpsvOrderStatusId =
                                                            4;
                                                        _model.lpsvIsParent =
                                                            false;
                                                        _model.lpsvOrdersOrVisits =
                                                            'orders';
                                                      });
                                                    },
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child: Text(
                                                          'AG',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation9']!),
                                          ],
                                        ),
                                        Column(
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
                                                      'Execução',
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
                                                    FFAppState()
                                                        .asDashAdminOrdersFilters
                                                        .where((e) =>
                                                            e.statusId == 5)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  showBadge: FFAppState()
                                                          .asDashAdminOrdersFilters
                                                          .where((e) =>
                                                              e.statusId == 5)
                                                          .toList().isNotEmpty,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
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
                                                        _model.lpsvOrderStatusId =
                                                            5;
                                                        _model.lpsvIsParent =
                                                            false;
                                                        _model.lpsvOrdersOrVisits =
                                                            'orders';
                                                      });
                                                    },
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child: Text(
                                                          'EX',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation10']!),
                                          ],
                                        ),
                                        Column(
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
                                                    FFAppState()
                                                        .asDashAdminOrdersFilters
                                                        .where((e) =>
                                                            e.statusId == 6)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  showBadge: FFAppState()
                                                          .asDashAdminOrdersFilters
                                                          .where((e) =>
                                                              e.statusId == 6)
                                                          .toList().isNotEmpty,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
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
                                                        _model.lpsvOrderStatusId =
                                                            6;
                                                        _model.lpsvIsParent =
                                                            false;
                                                        _model.lpsvOrdersOrVisits =
                                                            'orders';
                                                      });
                                                    },
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child: Text(
                                                          'SU',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation11']!),
                                          ],
                                        ),
                                      ].divide(const SizedBox(width: 12.0)),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation6']!),
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
                              borderRadius: BorderRadius.circular(12.0),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Atendimentos',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation3']!),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                                    FFAppState()
                                                        .asOVSearchResults
                                                        .where((e) =>
                                                            e.processingId == 1)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  showBadge: FFAppState()
                                                          .asOVSearchResults
                                                          .where((e) =>
                                                              e.processingId ==
                                                              1)
                                                          .toList().isNotEmpty,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
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
                                                        _model.lpsvOrdersOrVisits =
                                                            'visits';
                                                        _model.lpsvVisitsProcessingId =
                                                            1;
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
                                                'containerOnPageLoadAnimation13']!),
                                          ],
                                        ),
                                        Column(
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
                                                    FFAppState()
                                                        .asOVSearchResults
                                                        .where((e) =>
                                                            e.processingId == 2)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  showBadge: FFAppState()
                                                          .asOVSearchResults
                                                          .where((e) =>
                                                              e.processingId ==
                                                              2)
                                                          .toList().isNotEmpty,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
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
                                                        _model.lpsvOrdersOrVisits =
                                                            'visits';
                                                        _model.lpsvVisitsProcessingId =
                                                            2;
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
                                                'containerOnPageLoadAnimation14']!),
                                          ],
                                        ),
                                        Column(
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
                                                    FFAppState()
                                                        .asOVSearchResults
                                                        .where((e) =>
                                                            e.processingId == 3)
                                                        .toList()
                                                        .length
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall,
                                                  ),
                                                  showBadge: FFAppState()
                                                          .asOVSearchResults
                                                          .where((e) =>
                                                              e.processingId ==
                                                              3)
                                                          .toList().isNotEmpty,
                                                  shape:
                                                      badges.BadgeShape.circle,
                                                  badgeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
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
                                                        _model.lpsvOrdersOrVisits =
                                                            'visits';
                                                        _model.lpsvVisitsProcessingId =
                                                            3;
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
                                                'containerOnPageLoadAnimation15']!),
                                          ],
                                        ),
                                      ].divide(const SizedBox(width: 12.0)),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation12']!),
                          FutureBuilder<List<VUsersRow>>(
                            future: (_model.requestCompleter ??=
                                    Completer<List<VUsersRow>>()
                                      ..complete(VUsersTable().queryRows(
                                        queryFn: (q) => q,
                                      )))
                                .future,
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
                              List<VUsersRow> containerVUsersRowList =
                                  snapshot.data!;
                              return Container(
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
                                  borderRadius: BorderRadius.circular(12.0),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Disponibilidade',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation4']!),
                                        ],
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Builder(
                                              builder: (context) {
                                                final gcUsersAvailable =
                                                    FFAppState()
                                                        .asDashAdminUsersAvailable
                                                        .toList();
                                                return ListView.separated(
                                                  padding: const EdgeInsets.fromLTRB(
                                                    12.0,
                                                    0,
                                                    12.0,
                                                    0,
                                                  ),
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      gcUsersAvailable.length,
                                                  separatorBuilder: (_, __) =>
                                                      const SizedBox(width: 12.0),
                                                  itemBuilder: (context,
                                                      gcUsersAvailableIndex) {
                                                    final gcUsersAvailableItem =
                                                        gcUsersAvailable[
                                                            gcUsersAvailableIndex];
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          enableDrag: false,
                                                          useSafeArea: true,
                                                          context: context,
                                                          builder: (context) {
                                                            return GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    MdDBAdminTeamUsersWidget(
                                                                  teamId:
                                                                      valueOrDefault<
                                                                          int>(
                                                                    gcUsersAvailableItem
                                                                        .teamId,
                                                                    1,
                                                                  ),
                                                                  oVIdInProgress:
                                                                      valueOrDefault<
                                                                          int>(
                                                                    gcUsersAvailableItem
                                                                        .orderVisitIdInProgress,
                                                                    1,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));
                                                      },
                                                      child: badges.Badge(
                                                        badgeContent: Text(
                                                          gcUsersAvailableItem
                                                              .teamAmount
                                                              .toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                        showBadge: true,
                                                        shape: badges
                                                            .BadgeShape.circle,
                                                        badgeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        elevation: 4.0,
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    8.0,
                                                                    8.0,
                                                                    8.0),
                                                        position:
                                                            badges.BadgePosition
                                                                .topEnd(),
                                                        animationType: badges
                                                            .BadgeAnimationType
                                                            .scale,
                                                        toAnimate: true,
                                                        child: Container(
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Opacity(
                                                            opacity: !gcUsersAvailableItem
                                                                        .isAvailable &&
                                                                    !gcUsersAvailableItem
                                                                        .isOrderVisitIdInProgress
                                                                ? 0.5
                                                                : 1.0,
                                                            child:
                                                                CpUserPicProfileWidget(
                                                              key: Key(
                                                                  'Keypgl_${gcUsersAvailableIndex}_of_${gcUsersAvailable.length}'),
                                                              size: 60,
                                                              imgUrl:
                                                                  '${FFAppConstants.appServerUrlStorage}${gcUsersAvailableItem.imgFilePath}${gcUsersAvailableItem.imgFileName}',
                                                              toolTip:
                                                                  gcUsersAvailableItem
                                                                      .nameShort,
                                                              isAvailable:
                                                                  gcUsersAvailableItem
                                                                      .isAvailable,
                                                              isOrderVisitIdInProgress:
                                                                  gcUsersAvailableItem
                                                                      .isOrderVisitIdInProgress,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 8.0)),
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation16']!);
                            },
                          ),
                        ].divide(const SizedBox(width: 12.0)),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: const BoxDecoration(),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Builder(
                                            builder: (context) {
                                              if (_model.lpsvOrdersOrVisits ==
                                                  'orders') {
                                                return Builder(
                                                  builder: (context) {
                                                    if (_model.lpsvIsParent ??
                                                        false) {
                                                      return Builder(
                                                        builder: (context) {
                                                          if (_model
                                                                  .lpsvOrderStatusId ==
                                                              1) {
                                                            return SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'SS\'s Não programadas',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final gcOrdersParentStatus1 = FFAppState()
                                                                          .asDashAdminOrdersParentFilters
                                                                          .where((e) =>
                                                                              e.statusId ==
                                                                              _model.lpsvOrderStatusId)
                                                                          .toList();
                                                                      if (gcOrdersParentStatus1
                                                                          .isEmpty) {
                                                                        return const CpResultsNoFoundWidget();
                                                                      }
                                                                      return ListView
                                                                          .separated(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            gcOrdersParentStatus1.length,
                                                                        separatorBuilder:
                                                                            (_, __) =>
                                                                                const SizedBox(height: 12.0),
                                                                        itemBuilder:
                                                                            (context,
                                                                                gcOrdersParentStatus1Index) {
                                                                          final gcOrdersParentStatus1Item =
                                                                              gcOrdersParentStatus1[gcOrdersParentStatus1Index];
                                                                          return CpOPDBAdminCardShowWidget(
                                                                            key:
                                                                                Key('Keyxll_${gcOrdersParentStatus1Index}_of_${gcOrdersParentStatus1.length}'),
                                                                            orderParentId:
                                                                                gcOrdersParentStatus1Item.id,
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        8.0)),
                                                              ),
                                                            );
                                                          } else if (_model
                                                                  .lpsvOrderStatusId ==
                                                              2) {
                                                            return SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'SS\'s em Avaliação',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final gcOrdersParentStatus2 = FFAppState()
                                                                          .asDashAdminOrdersParentFilters
                                                                          .where((e) =>
                                                                              e.statusId ==
                                                                              _model.lpsvOrderStatusId)
                                                                          .toList();
                                                                      if (gcOrdersParentStatus2
                                                                          .isEmpty) {
                                                                        return const CpResultsNoFoundWidget();
                                                                      }
                                                                      return ListView
                                                                          .separated(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            gcOrdersParentStatus2.length,
                                                                        separatorBuilder:
                                                                            (_, __) =>
                                                                                const SizedBox(height: 12.0),
                                                                        itemBuilder:
                                                                            (context,
                                                                                gcOrdersParentStatus2Index) {
                                                                          final gcOrdersParentStatus2Item =
                                                                              gcOrdersParentStatus2[gcOrdersParentStatus2Index];
                                                                          return CpOPDBAdminCardShowWidget(
                                                                            key:
                                                                                Key('Key8n0_${gcOrdersParentStatus2Index}_of_${gcOrdersParentStatus2.length}'),
                                                                            orderParentId:
                                                                                gcOrdersParentStatus2Item.id,
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        8.0)),
                                                              ),
                                                            );
                                                          } else if (_model
                                                                  .lpsvOrderStatusId ==
                                                              3) {
                                                            return SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'SS\'s Autorizadas',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final gcOrdersParentStatus3 = FFAppState()
                                                                          .asDashAdminOrdersParentFilters
                                                                          .where((e) =>
                                                                              e.statusId ==
                                                                              _model.lpsvOrderStatusId)
                                                                          .toList();
                                                                      return ListView
                                                                          .separated(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            gcOrdersParentStatus3.length,
                                                                        separatorBuilder:
                                                                            (_, __) =>
                                                                                const SizedBox(height: 12.0),
                                                                        itemBuilder:
                                                                            (context,
                                                                                gcOrdersParentStatus3Index) {
                                                                          final gcOrdersParentStatus3Item =
                                                                              gcOrdersParentStatus3[gcOrdersParentStatus3Index];
                                                                          return CpOPDBAdminCardShowWidget(
                                                                            key:
                                                                                Key('Keyxxd_${gcOrdersParentStatus3Index}_of_${gcOrdersParentStatus3.length}'),
                                                                            orderParentId:
                                                                                gcOrdersParentStatus3Item.id,
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        8.0)),
                                                              ),
                                                            );
                                                          } else if (_model
                                                                  .lpsvOrderStatusId ==
                                                              4) {
                                                            return SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'SS\'s Agendadas',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final gcOrdersParentStatus4 = FFAppState()
                                                                          .asDashAdminOrdersParentFilters
                                                                          .where((e) =>
                                                                              e.statusId ==
                                                                              _model.lpsvOrderStatusId)
                                                                          .toList();
                                                                      return ListView
                                                                          .separated(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            gcOrdersParentStatus4.length,
                                                                        separatorBuilder:
                                                                            (_, __) =>
                                                                                const SizedBox(height: 12.0),
                                                                        itemBuilder:
                                                                            (context,
                                                                                gcOrdersParentStatus4Index) {
                                                                          final gcOrdersParentStatus4Item =
                                                                              gcOrdersParentStatus4[gcOrdersParentStatus4Index];
                                                                          return CpOCardShowWidget(
                                                                            key:
                                                                                Key('Key1g5_${gcOrdersParentStatus4Index}_of_${gcOrdersParentStatus4.length}'),
                                                                            ppOId:
                                                                                gcOrdersParentStatus4Item.id,
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        8.0)),
                                                              ),
                                                            );
                                                          } else if (_model
                                                                  .lpsvOrderStatusId ==
                                                              5) {
                                                            return SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'SS\'s Execução',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final gcOrdersParentStatus5 = FFAppState()
                                                                          .asDashAdminOrdersParentFilters
                                                                          .where((e) =>
                                                                              e.statusId ==
                                                                              _model.lpsvOrderStatusId)
                                                                          .toList();
                                                                      return ListView
                                                                          .separated(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            gcOrdersParentStatus5.length,
                                                                        separatorBuilder:
                                                                            (_, __) =>
                                                                                const SizedBox(height: 12.0),
                                                                        itemBuilder:
                                                                            (context,
                                                                                gcOrdersParentStatus5Index) {
                                                                          final gcOrdersParentStatus5Item =
                                                                              gcOrdersParentStatus5[gcOrdersParentStatus5Index];
                                                                          return CpOCardShowWidget(
                                                                            key:
                                                                                Key('Key2my_${gcOrdersParentStatus5Index}_of_${gcOrdersParentStatus5.length}'),
                                                                            ppOId:
                                                                                gcOrdersParentStatus5Item.id,
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
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'SS\'s Suspensas',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final gcOrdersParentStatus6 = FFAppState()
                                                                          .asDashAdminOrdersParentFilters
                                                                          .where((e) =>
                                                                              e.statusId ==
                                                                              _model.lpsvOrderStatusId)
                                                                          .toList();
                                                                      return ListView
                                                                          .separated(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            gcOrdersParentStatus6.length,
                                                                        separatorBuilder:
                                                                            (_, __) =>
                                                                                const SizedBox(height: 12.0),
                                                                        itemBuilder:
                                                                            (context,
                                                                                gcOrdersParentStatus6Index) {
                                                                          final gcOrdersParentStatus6Item =
                                                                              gcOrdersParentStatus6[gcOrdersParentStatus6Index];
                                                                          return CpOCardShowWidget(
                                                                            key:
                                                                                Key('Keyn6v_${gcOrdersParentStatus6Index}_of_${gcOrdersParentStatus6.length}'),
                                                                            ppOId:
                                                                                gcOrdersParentStatus6Item.id,
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        8.0)),
                                                              ),
                                                            );
                                                          }
                                                        },
                                                      );
                                                    } else {
                                                      return Builder(
                                                        builder: (context) {
                                                          if (_model
                                                                  .lpsvOrderStatusId ==
                                                              2) {
                                                            return SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'OS\'s em Avaliação',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final gcOrdersFiltersStatus2 = FFAppState()
                                                                          .asDashAdminOrdersFilters
                                                                          .where((e) =>
                                                                              e.statusId ==
                                                                              _model.lpsvOrderStatusId)
                                                                          .toList();
                                                                      if (gcOrdersFiltersStatus2
                                                                          .isEmpty) {
                                                                        return const CpResultsNoFoundWidget();
                                                                      }
                                                                      return ListView
                                                                          .separated(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            gcOrdersFiltersStatus2.length,
                                                                        separatorBuilder:
                                                                            (_, __) =>
                                                                                const SizedBox(height: 12.0),
                                                                        itemBuilder:
                                                                            (context,
                                                                                gcOrdersFiltersStatus2Index) {
                                                                          final gcOrdersFiltersStatus2Item =
                                                                              gcOrdersFiltersStatus2[gcOrdersFiltersStatus2Index];
                                                                          return CpOCardShowWidget(
                                                                            key:
                                                                                Key('Keygsf_${gcOrdersFiltersStatus2Index}_of_${gcOrdersFiltersStatus2.length}'),
                                                                            ppOId:
                                                                                gcOrdersFiltersStatus2Item.id,
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          } else if (_model
                                                                  .lpsvOrderStatusId ==
                                                              3) {
                                                            return SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'OS\'s Autorizadas',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final gcOrdersFiltersStatus3 = FFAppState()
                                                                          .asDashAdminOrdersFilters
                                                                          .where((e) =>
                                                                              e.statusId ==
                                                                              _model.lpsvOrderStatusId)
                                                                          .toList();
                                                                      if (gcOrdersFiltersStatus3
                                                                          .isEmpty) {
                                                                        return const CpResultsNoFoundWidget();
                                                                      }
                                                                      return ListView
                                                                          .separated(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            gcOrdersFiltersStatus3.length,
                                                                        separatorBuilder:
                                                                            (_, __) =>
                                                                                const SizedBox(height: 12.0),
                                                                        itemBuilder:
                                                                            (context,
                                                                                gcOrdersFiltersStatus3Index) {
                                                                          final gcOrdersFiltersStatus3Item =
                                                                              gcOrdersFiltersStatus3[gcOrdersFiltersStatus3Index];
                                                                          return CpOCardShowWidget(
                                                                            key:
                                                                                Key('Keyer3_${gcOrdersFiltersStatus3Index}_of_${gcOrdersFiltersStatus3.length}'),
                                                                            ppOId:
                                                                                gcOrdersFiltersStatus3Item.id,
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          } else if (_model
                                                                  .lpsvOrderStatusId ==
                                                              4) {
                                                            return SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'OS\'s Agendadas',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final gcOrdersFiltersStatus4 = FFAppState()
                                                                          .asDashAdminOrdersFilters
                                                                          .where((e) =>
                                                                              e.statusId ==
                                                                              _model.lpsvOrderStatusId)
                                                                          .toList();
                                                                      if (gcOrdersFiltersStatus4
                                                                          .isEmpty) {
                                                                        return const CpResultsNoFoundWidget();
                                                                      }
                                                                      return ListView
                                                                          .separated(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            gcOrdersFiltersStatus4.length,
                                                                        separatorBuilder:
                                                                            (_, __) =>
                                                                                const SizedBox(height: 12.0),
                                                                        itemBuilder:
                                                                            (context,
                                                                                gcOrdersFiltersStatus4Index) {
                                                                          final gcOrdersFiltersStatus4Item =
                                                                              gcOrdersFiltersStatus4[gcOrdersFiltersStatus4Index];
                                                                          return CpOCardShowWidget(
                                                                            key:
                                                                                Key('Keyov6_${gcOrdersFiltersStatus4Index}_of_${gcOrdersFiltersStatus4.length}'),
                                                                            ppOId:
                                                                                gcOrdersFiltersStatus4Item.id,
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          } else if (_model
                                                                  .lpsvOrderStatusId ==
                                                              5) {
                                                            return SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'OS\'s Execução',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final gcOrdersFiltersStatus5 = FFAppState()
                                                                          .asDashAdminOrdersFilters
                                                                          .where((e) =>
                                                                              e.statusId ==
                                                                              _model.lpsvOrderStatusId)
                                                                          .toList();
                                                                      if (gcOrdersFiltersStatus5
                                                                          .isEmpty) {
                                                                        return const CpResultsNoFoundWidget();
                                                                      }
                                                                      return ListView
                                                                          .separated(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            gcOrdersFiltersStatus5.length,
                                                                        separatorBuilder:
                                                                            (_, __) =>
                                                                                const SizedBox(height: 12.0),
                                                                        itemBuilder:
                                                                            (context,
                                                                                gcOrdersFiltersStatus5Index) {
                                                                          final gcOrdersFiltersStatus5Item =
                                                                              gcOrdersFiltersStatus5[gcOrdersFiltersStatus5Index];
                                                                          return CpOCardShowWidget(
                                                                            key:
                                                                                Key('Keyd5g_${gcOrdersFiltersStatus5Index}_of_${gcOrdersFiltersStatus5.length}'),
                                                                            ppOId:
                                                                                gcOrdersFiltersStatus5Item.id,
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
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'OS\'s Suspensas',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final gcOrdersFiltersStatus6 = FFAppState()
                                                                          .asDashAdminOrdersFilters
                                                                          .where((e) =>
                                                                              e.statusId ==
                                                                              _model.lpsvOrderStatusId)
                                                                          .toList();
                                                                      if (gcOrdersFiltersStatus6
                                                                          .isEmpty) {
                                                                        return const CpResultsNoFoundWidget();
                                                                      }
                                                                      return ListView
                                                                          .separated(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            gcOrdersFiltersStatus6.length,
                                                                        separatorBuilder:
                                                                            (_, __) =>
                                                                                const SizedBox(height: 12.0),
                                                                        itemBuilder:
                                                                            (context,
                                                                                gcOrdersFiltersStatus6Index) {
                                                                          final gcOrdersFiltersStatus6Item =
                                                                              gcOrdersFiltersStatus6[gcOrdersFiltersStatus6Index];
                                                                          return CpOCardShowWidget(
                                                                            key:
                                                                                Key('Keymqj_${gcOrdersFiltersStatus6Index}_of_${gcOrdersFiltersStatus6.length}'),
                                                                            ppOId:
                                                                                gcOrdersFiltersStatus6Item.id,
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
                                                      );
                                                    }
                                                  },
                                                );
                                              } else if (_model
                                                      .lpsvOrdersOrVisits ==
                                                  'visits') {
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Builder(
                                                        builder: (context) {
                                                          final gcOrdersVisitsProcessing =
                                                              FFAppState()
                                                                  .asOVSearchResults
                                                                  .where((e) =>
                                                                      e.processingId ==
                                                                      _model
                                                                          .lpsvVisitsProcessingId)
                                                                  .toList();
                                                          return ListView
                                                              .separated(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                gcOrdersVisitsProcessing
                                                                    .length,
                                                            separatorBuilder: (_,
                                                                    __) =>
                                                                const SizedBox(
                                                                    height:
                                                                        12.0),
                                                            itemBuilder: (context,
                                                                gcOrdersVisitsProcessingIndex) {
                                                              final gcOrdersVisitsProcessingItem =
                                                                  gcOrdersVisitsProcessing[
                                                                      gcOrdersVisitsProcessingIndex];
                                                              return Container(
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child:
                                                                    CpOVListItemWidget(
                                                                  key: Key(
                                                                      'Key9a0_${gcOrdersVisitsProcessingIndex}_of_${gcOrdersVisitsProcessing.length}'),
                                                                  ppOId: gcOrdersVisitsProcessingItem
                                                                      .orderId,
                                                                  ppOVId:
                                                                      gcOrdersVisitsProcessingItem
                                                                          .id,
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
                                                return Text(
                                                  'Opss ... Ocorreu um erro !',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                );
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation17']!),
                                ),
                              ].divide(const SizedBox(width: 12.0)),
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
    );
  }
}
