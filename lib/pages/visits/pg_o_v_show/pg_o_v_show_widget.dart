import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assets/cp_order_visit_asset_show_bottom_nav_bar/cp_order_visit_asset_show_bottom_nav_bar_widget.dart';
import '/pages/components/cp_menu/cp_menu_widget.dart';
import '/pages/components/cp_notifications_icon/cp_notifications_icon_widget.dart';
import '/pages/orders/cp_o_v_show/cp_o_v_show_widget.dart';
import '/pages/orders/cp_order_card_show/cp_order_card_show_widget.dart';
import '/pages/visits/cp_o_v_asset_list_card/cp_o_v_asset_list_card_widget.dart';
import '/pages/visits/cp_order_visit_services_list/cp_order_visit_services_list_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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

class _PgOVShowWidgetState extends State<PgOVShowWidget> {
  late PgOVShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

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
        () async {
          setState(() => _model.requestCompleter = null);
          await _model.waitForRequestCompleted();
        },
      );
      await actions.caSupabaseDisconnect(
        'ordersVisitsServices',
      );
      await Future.delayed(const Duration(milliseconds: 2000));
      await actions.caSupabaseConnect(
        'ordersVisitsServices',
        () async {},
      );
      await action_blocks.abOrderVisitProcessingCheck(
        context,
        abOrderVisitId: FFAppState().stOVSelected.first.id,
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
              child: FutureBuilder<List<VOrdersVisitsRow>>(
                future: (_model.requestCompleter ??=
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
                                              var shouldSetState = false;
                                              _model.isAllowed =
                                                  await action_blocks
                                                      .abGuardian(
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
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('Ops ..'),
                                                      content: const Text(
                                                          FFAppConstants
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

                                              if (shouldSetState) {
                                                setState(() {});
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
                                            FFAppState().stOVSelected.first.id,
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
                                            return Container(
                                              decoration: const BoxDecoration(),
                                              child: InkWell(
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
                                                        listViewVOrdersVisitsAssetsRow
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
                                                      'operation':
                                                          serializeParam(
                                                        'before',
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: CpOVAssetListCardWidget(
                                                  key: Key(
                                                      'Keymi8_${listViewIndex}_of_${listViewVOrdersVisitsAssetsRowList.length}'),
                                                  assetDescription:
                                                      listViewVOrdersVisitsAssetsRow
                                                          .description!,
                                                  unitDescription:
                                                      listViewVOrdersVisitsAssetsRow
                                                          .beforeUnitDescription!,
                                                  assetCode:
                                                      listViewVOrdersVisitsAssetsRow
                                                          .code!,
                                                  assetStatusDescription:
                                                      listViewVOrdersVisitsAssetsRow
                                                          .beforeStatusDescription!,
                                                  assetTagDescription:
                                                      listViewVOrdersVisitsAssetsRow
                                                          .beforeTagDescription!,
                                                  assetTagSubDescription:
                                                      listViewVOrdersVisitsAssetsRow
                                                          .beforeTagSubDescription!,
                                                  processingId:
                                                      listViewVOrdersVisitsAssetsRow
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
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                      model:
                                          _model.cpOrderVisitServicesListModel,
                                      updateCallback: () => setState(() {}),
                                      child: CpOrderVisitServicesListWidget(
                                        orderVisitId:
                                            FFAppState().stOVSelected.first.id,
                                      ),
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
