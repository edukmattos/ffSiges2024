import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_order_visit_asset_show_bottom_nav_bar/cp_order_visit_asset_show_bottom_nav_bar_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_order_card_show/cp_order_card_show_widget.dart';
import '/pages/orders/cp_order_visit_asset_list_item_card/cp_order_visit_asset_list_item_card_widget.dart';
import '/pages/visits/cp_order_visit_card2_show/cp_order_visit_card2_show_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pg_order_visit_show_model.dart';
export 'pg_order_visit_show_model.dart';

class PgOrderVisitShowWidget extends StatefulWidget {
  const PgOrderVisitShowWidget({
    super.key,
    required this.visitId,
    required this.orderId,
  });

  final int? visitId;
  final int? orderId;

  @override
  State<PgOrderVisitShowWidget> createState() => _PgOrderVisitShowWidgetState();
}

class _PgOrderVisitShowWidgetState extends State<PgOrderVisitShowWidget> {
  late PgOrderVisitShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOrderVisitShowModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.abOrderVisitSelected(
        context,
        abOrderVisitId: widget.visitId,
      );
      setState(() {});
      await action_blocks.abOrderSelected(
        context,
        abOrderId: valueOrDefault<int>(
          FFAppState().stOrderVisitSelected.first.orderId,
          1,
        ),
      );
      await actions.caSupabaseDisconnect(
        'ordersVisits',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'ordersVisits',
        () async {
          setState(() => _model.requestCompleter1 = null);
          await _model.waitForRequestCompleted1();
        },
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
              context.pushNamed('pgDashboardUserVisits');
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
              child: FutureBuilder<List<VOrdersVisitsRow>>(
                future: (_model.requestCompleter1 ??=
                        Completer<List<VOrdersVisitsRow>>()
                          ..complete(VOrdersVisitsTable().querySingleRow(
                            queryFn: (q) => q.eq(
                              'id',
                              widget.visitId,
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
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.cpOrderCardShowModel,
                          updateCallback: () => setState(() {}),
                          child: CpOrderCardShowWidget(
                            orderId: valueOrDefault<int>(
                              FFAppState().stOrderVisitSelected.first.orderId,
                              1,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: wrapWithModel(
                            model: _model.cpOrderVisitCard2ShowModel,
                            updateCallback: () => setState(() {}),
                            child: CpOrderVisitCard2ShowWidget(
                              visitId: valueOrDefault<int>(
                                FFAppState().stOrderVisitSelected.first.id,
                                1,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: wrapWithModel(
                                model: _model
                                    .cpOrderVisitAssetShowBottomNavBarModel,
                                updateCallback: () => setState(() {}),
                                child:
                                    const CpOrderVisitAssetShowBottomNavBarWidget(),
                              ),
                            ),
                          ],
                        ),
                        Builder(
                          builder: (context) {
                            if (FFAppState().stOrderVisitShowNavBarOption ==
                                'assets') {
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
                                                  .stOrderVisitSelected
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
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              size: 24.0,
                                            ),
                                            showLoadingIndicator: true,
                                            onPressed: () async {
                                              await action_blocks
                                                  .abPermissionCheck(
                                                context,
                                                abAppPageId: 1,
                                                abUserProfileId:
                                                    valueOrDefault<int>(
                                                  FFAppState()
                                                      .asUserCurrent
                                                      .profileId,
                                                  0,
                                                ),
                                              );
                                              if (FFAppState().stIsPermission) {
                                                context.pushNamed(
                                                  'pgOrderVisitAsset1Search',
                                                  queryParameters: {
                                                    'visitId': serializeParam(
                                                      widget.visitId,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              } else {
                                                return;
                                              }
                                            },
                                          ),
                                      ],
                                    ),
                                    FutureBuilder<List<VOrdersVisitsAssetsRow>>(
                                      future:
                                          VOrdersVisitsAssetsTable().queryRows(
                                        queryFn: (q) => q.eq(
                                          'orderVisitId',
                                          valueOrDefault<int>(
                                            FFAppState()
                                                .stOrderVisitSelected
                                                .first
                                                .id,
                                            1,
                                          ),
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
                                        List<VOrdersVisitsAssetsRow>
                                            listViewVOrdersVisitsAssetsRowList =
                                            snapshot.data!;
                                        return ListView.separated(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewVOrdersVisitsAssetsRowList
                                                  .length,
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(height: 12.0),
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewVOrdersVisitsAssetsRow =
                                                listViewVOrdersVisitsAssetsRowList[
                                                    listViewIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await action_blocks
                                                    .abOrderVisitAssetSelected(
                                                  context,
                                                  abOrderVisitAssetId:
                                                      valueOrDefault<int>(
                                                    listViewVOrdersVisitsAssetsRow
                                                        .id,
                                                    0,
                                                  ),
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
                                              child:
                                                  CpOrderVisitAssetListItemCardWidget(
                                                key: Key(
                                                    'Key8dc_${listViewIndex}_of_${listViewVOrdersVisitsAssetsRowList.length}'),
                                                code:
                                                    listViewVOrdersVisitsAssetsRow
                                                        .code!,
                                                statusDescription:
                                                    listViewVOrdersVisitsAssetsRow
                                                        .beforeStatusDescription!,
                                                description:
                                                    listViewVOrdersVisitsAssetsRow
                                                        .description!,
                                                tagDescription:
                                                    listViewVOrdersVisitsAssetsRow
                                                        .beforeTagDescription!,
                                                tagSubDescription:
                                                    listViewVOrdersVisitsAssetsRow
                                                        .beforeTagSubDescription!,
                                                processingId:
                                                    listViewVOrdersVisitsAssetsRow
                                                        .processingId!,
                                                isMoved:
                                                    listViewVOrdersVisitsAssetsRow
                                                        .isMoved!,
                                                unitDescription:
                                                    valueOrDefault<String>(
                                                  listViewVOrdersVisitsAssetsRow
                                                      .beforeUnitDescription,
                                                  'unitDescription',
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
                            } else if (FFAppState()
                                    .stOrderVisitShowNavBarOption ==
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
                                        if (valueOrDefault<int>(
                                              FFAppState()
                                                  .stOrderVisitSelected
                                                  .first
                                                  .processingId,
                                              1,
                                            ) !=
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                size: 24.0,
                                              ),
                                              showLoadingIndicator: true,
                                              onPressed: () async {
                                                context.pushNamed(
                                                    'pgOrdersVisitsServicesSearch');
                                              },
                                            ),
                                          ),
                                      ],
                                    ),
                                    FutureBuilder<
                                        List<VOrdersVisitsServicesRow>>(
                                      future: (_model.requestCompleter2 ??=
                                              Completer<
                                                  List<
                                                      VOrdersVisitsServicesRow>>()
                                                ..complete(
                                                    VOrdersVisitsServicesTable()
                                                        .queryRows(
                                                  queryFn: (q) => q.eq(
                                                    'orderVisitId',
                                                    FFAppState()
                                                        .stOrderVisitSelected
                                                        .first
                                                        .id,
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<VOrdersVisitsServicesRow>
                                            listViewServicesSelectedVOrdersVisitsServicesRowList =
                                            snapshot.data!;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewServicesSelectedVOrdersVisitsServicesRowList
                                                  .length,
                                          itemBuilder: (context,
                                              listViewServicesSelectedIndex) {
                                            final listViewServicesSelectedVOrdersVisitsServicesRow =
                                                listViewServicesSelectedVOrdersVisitsServicesRowList[
                                                    listViewServicesSelectedIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 12.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 70.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x32000000),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listViewServicesSelectedVOrdersVisitsServicesRow
                                                                      .serviceDescription,
                                                                  'serviceDescription',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Qte: ${formatNumber(
                                                                      listViewServicesSelectedVOrdersVisitsServicesRow
                                                                          .amount,
                                                                      formatType:
                                                                          FormatType
                                                                              .custom,
                                                                      format:
                                                                          '#.00',
                                                                      locale:
                                                                          'pt_BR',
                                                                    )}${listViewServicesSelectedVOrdersVisitsServicesRow.serviceUnit} | Vlr.Unit.: ${formatNumber(
                                                                      listViewServicesSelectedVOrdersVisitsServicesRow
                                                                          .priceUnit,
                                                                      formatType:
                                                                          FormatType
                                                                              .custom,
                                                                      currency:
                                                                          'R\$ ',
                                                                      format:
                                                                          '#,###.00',
                                                                      locale:
                                                                          'pt_BR',
                                                                    )} | Desc:  ${formatNumber(
                                                                      listViewServicesSelectedVOrdersVisitsServicesRow
                                                                          .discount,
                                                                      formatType:
                                                                          FormatType
                                                                              .custom,
                                                                      format:
                                                                          '###.00',
                                                                      locale:
                                                                          'pt_BR',
                                                                    )}%',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    formatNumber(
                                                                      listViewServicesSelectedVOrdersVisitsServicesRow
                                                                          .total!,
                                                                      formatType:
                                                                          FormatType
                                                                              .custom,
                                                                      currency:
                                                                          'R\$ ',
                                                                      format:
                                                                          '#,###.00',
                                                                      locale:
                                                                          'pt_BR',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 8.0)),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            AlignedTooltip(
                                                              content: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              4.0),
                                                                  child: Text(
                                                                    'Adicionar',
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
                                                                      .secondaryBackground,
                                                              elevation: 4.0,
                                                              tailBaseWidth:
                                                                  24.0,
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
                                                              child:
                                                                  FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    12.0,
                                                                buttonSize:
                                                                    50.0,
                                                                fillColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                icon: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .trashAlt,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  size: 24.0,
                                                                ),
                                                                showLoadingIndicator:
                                                                    true,
                                                                onPressed:
                                                                    () async {
                                                                  var confirmDialogResponse =
                                                                      await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: const Text('Ops ...'),
                                                                                content: const Text('Deseja realmente EXCLUIR ?'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                    child: const Text('Cancelar'),
                                                                                  ),
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                    child: const Text('Confirmar'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          ) ??
                                                                          false;
                                                                  if (confirmDialogResponse) {
                                                                    await OrdersVisitsServicesTable()
                                                                        .delete(
                                                                      matchingRows:
                                                                          (rows) =>
                                                                              rows.eq(
                                                                        'id',
                                                                        listViewServicesSelectedVOrdersVisitsServicesRow
                                                                            .id,
                                                                      ),
                                                                    );
                                                                    await action_blocks
                                                                        .abOrderVisitSelectedServices(
                                                                      context,
                                                                      abOrderVisitId: FFAppState()
                                                                          .stOrderVisitSelected
                                                                          .first
                                                                          .id,
                                                                    );
                                                                    setState(
                                                                        () {});
                                                                    setState(() =>
                                                                        _model.requestCompleter1 =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted1();
                                                                  }
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
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
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
