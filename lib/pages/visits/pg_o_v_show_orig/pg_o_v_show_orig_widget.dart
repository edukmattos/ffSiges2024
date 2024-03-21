import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_order_visit_asset_show_bottom_nav_bar/cp_order_visit_asset_show_bottom_nav_bar_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_o_card_show/cp_o_card_show_widget.dart';
import '/pages/orders/cp_o_v_show/cp_o_v_show_widget.dart';
import '/pages/user/cp_d_b_user_available/cp_d_b_user_available_widget.dart';
import '/pages/visits/cp_o_v_asset_list_card/cp_o_v_asset_list_card_widget.dart';
import '/pages/visits/cp_o_v_services_list/cp_o_v_services_list_widget.dart';
import '/pages/visits/cp_o_v_vehicles_list_item/cp_o_v_vehicles_list_item_widget.dart';
import '/pages/visits/md_o_v_vehicle_new/md_o_v_vehicle_new_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_o_v_show_orig_model.dart';
export 'pg_o_v_show_orig_model.dart';

class PgOVShowOrigWidget extends StatefulWidget {
  const PgOVShowOrigWidget({
    super.key,
    int? ppOVId,
    int? ppOId,
    int? ppProcessingId,
    int? ppUnitId,
    int? ppOPId,
  })  : ppOVId = ppOVId ?? 1,
        ppOId = ppOId ?? 1,
        ppProcessingId = ppProcessingId ?? 1,
        ppUnitId = ppUnitId ?? 1,
        ppOPId = ppOPId ?? 1;

  final int ppOVId;
  final int ppOId;
  final int ppProcessingId;
  final int ppUnitId;
  final int ppOPId;

  @override
  State<PgOVShowOrigWidget> createState() => _PgOVShowOrigWidgetState();
}

class _PgOVShowOrigWidgetState extends State<PgOVShowOrigWidget> {
  late PgOVShowOrigModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgOVShowOrigModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text(widget.ppOVId.toString()),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: const Text('Ok'),
              ),
            ],
          );
        },
      );
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
      await action_blocks.abOVProcessingCheck(
        context,
        abOVId: widget.ppOVId,
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
                    Container(
                      width: double.infinity,
                      height: 80.0,
                      decoration: const BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.cpDBUserAvailableModel,
                        updateCallback: () => setState(() {}),
                        child: CpDBUserAvailableWidget(
                          toolTip: FFAppState().asUserCurrent.nameShort,
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.cpOCardShowModel,
                      updateCallback: () => setState(() {}),
                      child: CpOCardShowWidget(
                        ppOId: widget.ppOId,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.cpOVShowModel,
                      updateCallback: () => setState(() {}),
                      updateOnChange: true,
                      child: CpOVShowWidget(
                        ppOVId: widget.ppOVId,
                      ),
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
                                    if (widget.ppProcessingId != 4)
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
                                                'oVId': serializeParam(
                                                  widget.ppOVId,
                                                  ParamType.int,
                                                ),
                                                'unitId': serializeParam(
                                                  widget.ppUnitId,
                                                  ParamType.int,
                                                ),
                                                'orderId': serializeParam(
                                                  widget.ppOId,
                                                  ParamType.int,
                                                ),
                                                'oPId': serializeParam(
                                                  widget.ppOPId,
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
                                                widget.ppOVId,
                                              ),
                                            )))
                                          .future,
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
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
                                              if (widget.ppProcessingId != 4) {
                                                await action_blocks
                                                    .abOVAssetSelected(
                                                  context,
                                                  abOVAssetId:
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
                                                  'pgOVAsset2Before',
                                                  queryParameters: {
                                                    'ppOperation':
                                                        serializeParam(
                                                      'before',
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              } else {
                                                context.pushNamed(
                                                  'pgOVAssetApproved',
                                                  queryParameters: {
                                                    'ppOVAssetId':
                                                        serializeParam(
                                                      listViewAssetsVOrdersVisitsAssetsRow
                                                          .id,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              }
                                            },
                                            child: CpOVAssetListCardWidget(
                                              key: Key(
                                                  'Keymi8_${listViewAssetsIndex}_of_${listViewAssetsVOrdersVisitsAssetsRowList.length}'),
                                              oVAssetId:
                                                  listViewAssetsVOrdersVisitsAssetsRow
                                                      .id!,
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
                                    if (widget.ppProcessingId != 4)
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
                                              'pgOVServicesSearch',
                                              queryParameters: {
                                                'ppOVId': serializeParam(
                                                  widget.ppOVId,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                                wrapWithModel(
                                  model: _model.cpOVServicesListModel,
                                  updateCallback: () => setState(() {}),
                                  child: CpOVServicesListWidget(
                                    ppOVId: widget.ppOVId,
                                    ppProcessingId: widget.ppProcessingId,
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
                                    if (widget.ppProcessingId != 4)
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
                                                  child: SizedBox(
                                                    height: double.infinity,
                                                    child: MdOVVehicleNewWidget(
                                                      ppOVid: widget.ppOVId,
                                                      ppOId: widget.ppOId,
                                                      ppOPId: widget.ppOPId,
                                                    ),
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
                                                      widget.ppOVId,
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
                                          child: CpOVVehiclesListItemWidget(
                                            key: Key(
                                                'Keyo3n_${listViewVehiclesIndex}_of_${listViewVehiclesVOrdersVisitsVehiclesRowList.length}'),
                                            ppOVVehicleId:
                                                listViewVehiclesVOrdersVisitsVehiclesRow
                                                    .id!,
                                            ppProcessingId:
                                                widget.ppProcessingId,
                                            ppOVId: widget.ppOVId,
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
