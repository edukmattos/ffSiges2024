import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_order_visit_asset_show_bottom_nav_bar/cp_order_visit_asset_show_bottom_nav_bar_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_o_v_show/cp_o_v_show_widget.dart';
import '/pages/orders/cp_order_card_show/cp_order_card_show_widget.dart';
import '/pages/visits/cp_o_v_asset_list_card/cp_o_v_asset_list_card_widget.dart';
import '/pages/visits/cp_o_v_services_list/cp_o_v_services_list_widget.dart';
import '/pages/visits/cp_o_v_vehicles_list/cp_o_v_vehicles_list_widget.dart';
import '/pages/visits/md_o_v_vehicle_new/md_o_v_vehicle_new_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_o_v_show_model.dart';
export 'pg_o_v_show_model.dart';

class PgOVShowWidget extends StatefulWidget {
  const PgOVShowWidget({
    super.key,
    required this.visitId,
    required this.orderId,
    int? appPageId009,
  }) : appPageId009 = appPageId009 ?? 9;

  final int? visitId;
  final int? orderId;
  final int appPageId009;

  @override
  State<PgOVShowWidget> createState() => _PgOVShowWidgetState();
}

class _PgOVShowWidgetState extends State<PgOVShowWidget>
    with TickerProviderStateMixin {
  late PgOVShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
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
          begin: const Offset(0.0, 90.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
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
          begin: const Offset(0.0, 90.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
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
          begin: const Offset(0.0, 90.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
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
          begin: const Offset(0.0, 90.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVShowModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.caSupabaseDisconnect(
        'ordersVisits',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'ordersVisits',
        () async {},
      );
      await actions.caSupabaseDisconnect(
        'ordersVisitsServices',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'ordersVisitsServices',
        () async {
          setState(() => _model.requestCompleter2 = null);
          await _model.waitForRequestCompleted2();
        },
      );
      await actions.caSupabaseDisconnect(
        'ordersVisitsVehicles',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'ordersVisitsVehicles',
        () async {
          setState(() => _model.requestCompleter1 = null);
          await _model.waitForRequestCompleted1();
        },
      );
      await action_blocks.abOrderVisitProcessingCheck(
        context,
        abOrderVisitId: FFAppState().stOVSelected.first.id,
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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Atendimento',
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
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.cpOrderCardShowModel,
                      updateCallback: () => setState(() {}),
                      child: CpOrderCardShowWidget(
                        orderId: valueOrDefault<int>(
                          FFAppState().stOVSelected.first.orderId,
                          1,
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.cpOVShowModel,
                      updateCallback: () => setState(() {}),
                      child: CpOVShowWidget(
                        visitId: FFAppState().stOVSelected.first.id,
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Container(
                              height: 160.0,
                              constraints: const BoxConstraints(
                                minWidth: 160.0,
                                maxWidth: 200.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.tools,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 20.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 12.0),
                                      child: Text(
                                        formatNumber(
                                          FFAppState()
                                              .stOVSelected
                                              .first
                                              .priceServices,
                                          formatType: FormatType.custom,
                                          currency: 'R\$ ',
                                          format: '#,##0.00',
                                          locale: 'pt_BR',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge,
                                      ),
                                    ),
                                    Text(
                                      'Serviços',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation1']!),
                          ),
                          FaIcon(
                            FontAwesomeIcons.plus,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Flexible(
                            child: Container(
                              height: 160.0,
                              constraints: const BoxConstraints(
                                minWidth: 160.0,
                                maxWidth: 200.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.dolly,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 20.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 12.0),
                                      child: Text(
                                        formatNumber(
                                          FFAppState()
                                              .stOVSelected
                                              .first
                                              .priceMaterials,
                                          formatType: FormatType.custom,
                                          currency: 'R\$ ',
                                          format: '#,##0.00',
                                          locale: 'pt_BR',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge,
                                      ),
                                    ),
                                    Text(
                                      'Materiais',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation2']!),
                          ),
                          FaIcon(
                            FontAwesomeIcons.plus,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Flexible(
                            child: Container(
                              height: 160.0,
                              constraints: const BoxConstraints(
                                minWidth: 160.0,
                                maxWidth: 200.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.truck,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 20.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 12.0),
                                      child: Text(
                                        formatNumber(
                                          FFAppState()
                                              .stOVSelected
                                              .first
                                              .priceVehicles,
                                          formatType: FormatType.custom,
                                          currency: 'R\$ ',
                                          format: '#,##0.00',
                                          locale: 'pt_BR',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge,
                                      ),
                                    ),
                                    Text(
                                      'Transporte',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation3']!),
                          ),
                          FaIcon(
                            FontAwesomeIcons.equals,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Flexible(
                            child: Container(
                              height: 160.0,
                              constraints: const BoxConstraints(
                                minWidth: 160.0,
                                maxWidth: 200.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.moneyBillAlt,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 20.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 12.0),
                                      child: Text(
                                        formatNumber(
                                          FFAppState()
                                              .stOVSelected
                                              .first
                                              .priceTotal,
                                          formatType: FormatType.custom,
                                          currency: 'R\$ ',
                                          format: '#,##0.00',
                                          locale: 'pt_BR',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge,
                                      ),
                                    ),
                                    Text(
                                      'Total',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation4']!),
                          ),
                        ].divide(const SizedBox(width: 8.0)),
                      ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: wrapWithModel(
                            model:
                                _model.cpOrderVisitAssetShowBottomNavBarModel,
                            updateCallback: () => setState(() {}),
                            child: const CpOrderVisitAssetShowBottomNavBarWidget(),
                          ),
                        ),
                      ],
                    ),
                    Builder(
                      builder: (context) {
                        if (FFAppState().stOVShowNavBarOption == 'assets') {
                          return Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Ativos',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                      ),
                                    ),
                                    if (valueOrDefault<int>(
                                          FFAppState()
                                              .stOVSelected
                                              .first
                                              .processingId,
                                          1,
                                        ) !=
                                        4)
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 12.0,
                                        borderWidth: 1.0,
                                        buttonSize: 50.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        icon: Icon(
                                          Icons.add,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: () async {
                                          var shouldSetState = false;
                                          _model.isAllowed =
                                              await action_blocks.abGuardian(
                                            context,
                                            abPgRequestedId: 1,
                                          );
                                          shouldSetState = true;
                                          if (_model.isAllowed!) {
                                            context.pushNamed(
                                              'pgOVAsset1Search',
                                              queryParameters: {
                                                'visitId': serializeParam(
                                                  widget.visitId,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: const Text('Ops ..'),
                                                  content: const Text(FFAppConstants
                                                      .msgNotAllowed),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: const Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                            if (shouldSetState) {
                                              setState(() {});
                                            }
                                            return;
                                          }

                                          if (shouldSetState) setState(() {});
                                        },
                                      ),
                                  ],
                                ),
                                FutureBuilder<List<VOrdersVisitsAssetsRow>>(
                                  future:
                                      (_model.requestCompleter2 ??= Completer<
                                              List<VOrdersVisitsAssetsRow>>()
                                            ..complete(
                                                VOrdersVisitsAssetsTable()
                                                    .queryRows(
                                              queryFn: (q) => q.eq(
                                                'orderVisitId',
                                                valueOrDefault<int>(
                                                  FFAppState()
                                                      .stOVSelected
                                                      .first
                                                      .id,
                                                  1,
                                                ),
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
                                    List<VOrdersVisitsAssetsRow>
                                        listViewAssetsVOrdersVisitsAssetsRowList =
                                        snapshot.data!;
                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewAssetsVOrdersVisitsAssetsRowList
                                              .length,
                                      separatorBuilder: (_, __) =>
                                          const SizedBox(height: 12.0),
                                      itemBuilder:
                                          (context, listViewAssetsIndex) {
                                        final listViewAssetsVOrdersVisitsAssetsRow =
                                            listViewAssetsVOrdersVisitsAssetsRowList[
                                                listViewAssetsIndex];
                                        return Container(
                                          decoration: const BoxDecoration(),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await action_blocks
                                                  .abOrderVisitAssetSelected(
                                                context,
                                                abOrderVisitAssetId:
                                                    listViewAssetsVOrdersVisitsAssetsRow
                                                        .id,
                                              );
                                              await action_blocks
                                                  .abOVAssetActivitiesUpdate(
                                                context,
                                                abOVAssetId: FFAppState()
                                                    .stOVAssetSelected
                                                    .first
                                                    .id,
                                              );

                                              context.pushNamed(
                                                'pgOrderVisitAsset2Before',
                                                queryParameters: {
                                                  'operation': serializeParam(
                                                    'before',
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: CpOVAssetListCardWidget(
                                              key: Key(
                                                  'Keymi8_${listViewAssetsIndex}_of_${listViewAssetsVOrdersVisitsAssetsRowList.length}'),
                                              assetDescription:
                                                  listViewAssetsVOrdersVisitsAssetsRow
                                                      .description!,
                                              unitDescription:
                                                  listViewAssetsVOrdersVisitsAssetsRow
                                                      .beforeUnitDescription!,
                                              assetCode:
                                                  listViewAssetsVOrdersVisitsAssetsRow
                                                      .code!,
                                              assetStatusDescription:
                                                  listViewAssetsVOrdersVisitsAssetsRow
                                                      .beforeStatusDescription!,
                                              assetTagDescription:
                                                  listViewAssetsVOrdersVisitsAssetsRow
                                                      .beforeTagDescription!,
                                              assetTagSubDescription:
                                                  listViewAssetsVOrdersVisitsAssetsRow
                                                      .beforeTagSubDescription!,
                                              processingId:
                                                  listViewAssetsVOrdersVisitsAssetsRow
                                                      .processingId!,
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          );
                        } else if (FFAppState().stOVShowNavBarOption ==
                            'services') {
                          return Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Serviços',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                      ),
                                    ),
                                    if (FFAppState()
                                            .stOVSelected
                                            .first
                                            .processingId !=
                                        4)
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onLongPress: () async {},
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 255.0,
                                          borderWidth: 1.0,
                                          buttonSize: 50.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          icon: Icon(
                                            Icons.add,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 24.0,
                                          ),
                                          showLoadingIndicator: true,
                                          onPressed: () async {
                                            context.pushNamed(
                                                'pgOVServicesSearch');
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                                wrapWithModel(
                                  model: _model.cpOVServicesListModel,
                                  updateCallback: () => setState(() {}),
                                  child: CpOVServicesListWidget(
                                    orderVisitId:
                                        FFAppState().stOVSelected.first.id,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          );
                        } else if (FFAppState().stOVShowNavBarOption ==
                            'vehicles') {
                          return Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Transporte',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                      ),
                                    ),
                                    if (valueOrDefault<int>(
                                          FFAppState()
                                              .stOVSelected
                                              .first
                                              .processingId,
                                          1,
                                        ) !=
                                        4)
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 12.0,
                                        borderWidth: 1.0,
                                        buttonSize: 50.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        icon: Icon(
                                          Icons.add,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: const SizedBox(
                                                    height: double.infinity,
                                                    child:
                                                        MdOVVehicleNewWidget(),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                      ),
                                  ],
                                ),
                                FutureBuilder<List<VOrdersVisitsVehiclesRow>>(
                                  future:
                                      (_model.requestCompleter1 ??= Completer<
                                              List<VOrdersVisitsVehiclesRow>>()
                                            ..complete(
                                                VOrdersVisitsVehiclesTable()
                                                    .queryRows(
                                              queryFn: (q) => q
                                                  .eq(
                                                    'orderVisitId',
                                                    valueOrDefault<int>(
                                                      FFAppState()
                                                          .stOVSelected
                                                          .first
                                                          .id,
                                                      1,
                                                    ),
                                                  )
                                                  .order('vehicleDescription',
                                                      ascending: true),
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<VOrdersVisitsVehiclesRow>
                                        listViewVehiclesVOrdersVisitsVehiclesRowList =
                                        snapshot.data!;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewVehiclesVOrdersVisitsVehiclesRowList
                                              .length,
                                      itemBuilder:
                                          (context, listViewVehiclesIndex) {
                                        final listViewVehiclesVOrdersVisitsVehiclesRow =
                                            listViewVehiclesVOrdersVisitsVehiclesRowList[
                                                listViewVehiclesIndex];
                                        return Container(
                                          decoration: const BoxDecoration(),
                                          child: CpOVVehiclesListWidget(
                                            key: Key(
                                                'Key6de_${listViewVehiclesIndex}_of_${listViewVehiclesVOrdersVisitsVehiclesRowList.length}'),
                                            orderVisitVehicle:
                                                listViewVehiclesVOrdersVisitsVehiclesRow,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                          );
                        } else {
                          return Text(
                            'Hello World',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          );
                        }
                      },
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
